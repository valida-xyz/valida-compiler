#include "LicenseManagerBase.h"
#include <iostream>

#include <fstream>
#include "llvm/Support/raw_ostream.h"

#include "llvm/Config/llvm-config.h"
#if LLVM_ON_WIN32
#include <windows.h>
#endif
#if LLVM_ON_UNIX
#include <unistd.h>
#endif

static string extractString(string str, string pattern, size_t pat_size) {
  std::size_t verStart = str.find(pattern);
  std::size_t firstSpace = str.find(" ", verStart);
  if (verStart != std::string::npos && firstSpace != std::string::npos) {
    return str.substr(verStart + pat_size, firstSpace - verStart - pat_size);
  } else if (verStart != std::string::npos && firstSpace == std::string::npos) {
    return str.substr(verStart + pat_size, firstSpace - verStart - pat_size);
  }
  return "unknown";
}

bool LicenseManagerBase::isCorrectBaseVersion(string rlm_str) {
  string result = extractString(rlm_str, "ver=", 4);
  return (result == baseVer);
}

bool LicenseManagerBase::areAllParamsCorrect(string product_name,
                                             string buildDate, string rlm_str) {
  return ((pName == product_name) && isCorrectBaseVersion(rlm_str) &&
          (buildDate >= pVersionDate));
}

int LicenseManagerBase::checkLicense() {
  RLM_PRODUCTS products;
  int stat = 0;
  bool validLicFileAvailable = true;

  ifstream f(licenseDir.c_str());

  // Check of the passed file to the License manager is correct.
  // In case the file doesn't exist or no file is passed, then take
  // the file name from the environment variable named "RLM_LICENSE_FILE".
  // If that variable is also empty or doesn't contain a file, then we
  // set validLicFileAvailable =false.
  if (licenseDir == "" || !f.good()) {
    validLicFileAvailable = false;
    char *pPath = getenv("RLM_LICENSE_FILE");
    if (pPath != nullptr) {
      ifstream f(const_cast<const char *>(pPath));
      if (f.good()) {
        validLicFileAvailable = true;
        licenseDir = pPath;
      }
    }
  }

  rlm_handle = rlm_init(licenseDir.c_str(), nullptr, (char *)nullptr);

  // In case there is no file, we skip the process of checking the license on
  // the file system.
  if (validLicFileAvailable) {
    stat = rlm_stat(rlm_handle);
    if (stat) {
      char error_string[RLM_ERRSTRING_MAX];
      llvm::errs() << "license check: " << rlm_errstring(nullptr, rlm_handle, error_string);
      return -1;
    }



    products = rlm_products(rlm_handle, nullptr, (char *)nullptr);

    if (products != nullptr) {
      string name = rlm_product_name(products);
      string verDate = rlm_product_ver(products);
      rlm_license =
          rlm_checkout(rlm_handle, pName.c_str(), pVersionDate.c_str(), 1);
      if (rlm_license != nullptr) {
        if (rlm_license_options(rlm_license) != nullptr) {
          string options = rlm_product_options(products);
          if (areAllParamsCorrect(name, verDate, options)) return 1;
        }
      }
    }
  }

  // Check if we already have a license file.
  rlm_license =
      rlm_checkout(rlm_handle, pName.c_str(), pVersionDate.c_str(), 1);
  stat = rlm_license_stat(rlm_license);
  if (stat == 0) {
    string rlm_str = rlm_license_options(rlm_license);
    if (areAllParamsCorrect(rlm_license_product(rlm_license),
                            rlm_license_ver(rlm_license), rlm_str)) {
      return 1;
    }
  }

  rlm_checkin(rlm_license);
  rlm_license = (RLM_LICENSE) nullptr;

  // The tried license is not suitable for us: request all the licenses.
  products = rlm_products(rlm_handle, const_cast<char *>(pName.c_str()),
                          const_cast<char *>(pVersionDate.c_str()));


  if (products == nullptr) {
  llvm::errs() << "pName: " << pName << "\n";
  llvm::errs() << "pVersionDate: " << pVersionDate << "\n";
  llvm::errs() << "Base Version: " << baseVer << "\n";
    llvm::errs() << "Product Error - no product found\n";
    return -1;
  }

  rlm_product_first(products);

  rlm_license =
      rlm_checkout(rlm_handle, pName.c_str(), pVersionDate.c_str(), 1);

  if (products == nullptr) {
  llvm::errs() << "pName: " << pName << "\n";
  llvm::errs() << "pVersionDate: " << pVersionDate << "\n";
  llvm::errs() << "Base Version: " << baseVer << "\n";
    llvm::errs() << "Product Error - no product found\n";
    return -1;
  }

  string options = rlm_product_options(products);
  int i = 1;
  int licFound = 0;
  do {
    if ((stat == RLM_EL_INQUEUE) && (rlm_license != nullptr)) {
      stat = rlm_get_attr_health(rlm_license);
    } else {
      rlm_license =
          rlm_checkout_product(rlm_handle, products, pVersionDate.c_str(), 1);
      stat = rlm_license_stat(rlm_license);
    }

    if (areAllParamsCorrect(rlm_product_name(products),
                            rlm_product_ver(products), options)) {
      return 1;
    } else {
      licFound = -1;
    }

    if (stat != 0) {
      if (i <= retries) {
        if (stat != RLM_EL_INQUEUE) {

          rlm_checkin(rlm_license);
        }
#if LLVM_ON_WIN32
      Sleep(1);
#endif
#ifdef LLVM_ON_UNIX
      usleep(1000);
#endif

      }
    }

  } while (i++ < retries);
  rlm_products_free(products);

  return (licFound == -1) ? licFound : stat;
}
