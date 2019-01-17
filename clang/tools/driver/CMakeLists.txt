set( LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  Analysis
  CodeGen
  Core
  IPO
  AggressiveInstCombine
  InstCombine
  Instrumentation
  MC
  MCParser
  ObjCARCOpts
  Option
  ScalarOpts
  Support
  TransformUtils
  Vectorize
  )

option(CLANG_PLUGIN_SUPPORT "Build clang with plugin support" ON)

# Support plugins. This must be before add_clang_executable as it reads
# LLVM_NO_DEAD_STRIP.
if(CLANG_PLUGIN_SUPPORT)
  set(LLVM_NO_DEAD_STRIP 1)
endif()

if(NOT CLANG_BUILT_STANDALONE)
  set(tablegen_deps intrinsics_gen)
endif()

set(RLM_PRODUCT_NAME
  "arm-llvm"
  CACHE  STRING "The name of the product as defined in RLM ")

set(RLM_LIB ""
  CACHE FILEPATH
  "Path to librlm.a - This is used for integrating the license manager.")

set(RLM_LIC ""
  CACHE  FILEPATH "Path to the license file")

if(WIN32)
  add_library(rlm MODULE IMPORTED)
  set (RLM_LIB "${CLANG_SOURCE_DIR}/rlm_libs/x64_w/rlm1233.lib")
  string (REPLACE ".lib" ".dll" RLM_DLL ${RLM_LIB})
else()
  add_library(rlm STATIC  IMPORTED)
  set (RLM_LIB "${CLANG_SOURCE_DIR}/rlm_libs/x64_l/librlm.a")
endif()

set_property(TARGET rlm PROPERTY IMPORTED_LOCATION ${RLM_LIB})


add_clang_tool(clang
  driver.cpp
  cc1_main.cpp
  cc1as_main.cpp
  cc1gen_reproducer_main.cpp
  LicenseManagerBase.cpp

  DEPENDS
  ${tablegen_deps}
  )

target_link_libraries(clang
  PRIVATE
  clangBasic
  clangCodeGen
  clangDriver
  clangFrontend
  clangFrontendTool
  rlm
  )

add_definitions( -DRLM_BASE_VERSION="${CLANG_VERSION_MAJOR}.${CLANG_VERSION_MINOR}" )
string(TIMESTAMP D_CLANG_BUILD_DATE "%Y.%m")
add_definitions( -DRLM_BUILD_DATE="${D_CLANG_BUILD_DATE}" )
add_definitions( -DRLM_LIC_FILE="${RLM_LIC}" )
add_definitions( -DRLM_PRODUCT_NAME="${RLM_PRODUCT_NAME}" )


if(WIN32 AND NOT CYGWIN)
  # Prevent versioning if the buildhost is targeting for Win32.
else()
  set_target_properties(clang PROPERTIES VERSION ${CLANG_EXECUTABLE_VERSION})
endif()

# Support plugins.
if(CLANG_PLUGIN_SUPPORT)
  export_executable_symbols(clang)
endif()

add_dependencies(clang clang-headers)

if(NOT CLANG_LINKS_TO_CREATE)
  set(CLANG_LINKS_TO_CREATE clang++ clang-cl clang-cpp)
endif()

foreach(link ${CLANG_LINKS_TO_CREATE})
  add_clang_symlink(${link} clang)
endforeach()

# Configure plist creation for OS X.
set (TOOL_INFO_PLIST "Info.plist" CACHE STRING "Plist name")
if (APPLE)
  if (CLANG_VENDOR)
    set(TOOL_INFO_NAME "${CLANG_VENDOR} clang")
  else()
    set(TOOL_INFO_NAME "clang")
  endif()

  set(TOOL_INFO_UTI "${CLANG_VENDOR_UTI}")
  set(TOOL_INFO_VERSION "${CLANG_VERSION}")
  set(TOOL_INFO_BUILD_VERSION "${LLVM_VERSION_MAJOR}.${LLVM_VERSION_MINOR}")

  set(TOOL_INFO_PLIST_OUT "${CMAKE_CURRENT_BINARY_DIR}/${TOOL_INFO_PLIST}")
  target_link_libraries(clang
    PRIVATE
    "-Wl,-sectcreate,__TEXT,__info_plist,${TOOL_INFO_PLIST_OUT}")
  configure_file("${TOOL_INFO_PLIST}.in" "${TOOL_INFO_PLIST_OUT}" @ONLY)

  set(TOOL_INFO_UTI)
  set(TOOL_INFO_NAME)
  set(TOOL_INFO_VERSION)
  set(TOOL_INFO_BUILD_VERSION)
endif()

if(CLANG_ORDER_FILE AND
    (LLVM_LINKER_IS_LD64 OR LLVM_LINKER_IS_GOLD OR LLVM_LINKER_IS_LLD))
  include(CheckLinkerFlag)

  if (LLVM_LINKER_IS_LD64)
    set(LINKER_ORDER_FILE_OPTION "-Wl,-order_file,${CLANG_ORDER_FILE}")
  elseif (LLVM_LINKER_IS_GOLD)
    set(LINKER_ORDER_FILE_OPTION "-Wl,--section-ordering-file,${CLANG_ORDER_FILE}")
  elseif (LLVM_LINKER_IS_LLD)
    set(LINKER_ORDER_FILE_OPTION "-Wl,--symbol-ordering-file,${CLANG_ORDER_FILE}")
  endif()

  # This is a test to ensure the actual order file works with the linker.
  check_linker_flag(${LINKER_ORDER_FILE_OPTION} LINKER_ORDER_FILE_WORKS)

  # Passing an empty order file disables some linker layout optimizations.
  # To work around this and enable workflows for re-linking when the order file
  # changes we check during configuration if the file is empty, and make it a
  # configuration dependency.
  file(READ ${CLANG_ORDER_FILE} ORDER_FILE LIMIT 20)
  if("${ORDER_FILE}" STREQUAL "\n")
    set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${CLANG_ORDER_FILE})
  elseif(LINKER_ORDER_FILE_WORKS)
    target_link_libraries(clang PRIVATE ${LINKER_ORDER_FILE_OPTION})
    set_target_properties(clang PROPERTIES LINK_DEPENDS ${CLANG_ORDER_FILE})
  endif()
endif()

if(WIN32)
add_custom_command(
        TARGET clang POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
                ${RLM_DLL}
                ${LLVM_RUNTIME_OUTPUT_INTDIR}/
        COMMENT "Copying RLM shared library to bin folder...")
endif()

if(WITH_POLLY AND LINK_POLLY_INTO_TOOLS)
  target_link_libraries(clang PRIVATE Polly)
endif(WITH_POLLY AND LINK_POLLY_INTO_TOOLS)
