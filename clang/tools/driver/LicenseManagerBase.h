#ifndef LLVM_CLANG_TOOLS_CLANG_TOOLS_DRIVER_LICENSEMANAGERBASE_H_
#define LLVM_CLANG_TOOLS_CLANG_TOOLS_DRIVER_LICENSEMANAGERBASE_H_

#include "license.h"
#include <string>

using namespace std;

class LicenseManagerBase {
private:
  string pName;
  string pVersionDate;
  string baseVer;
  string licenseDir;
  int retries;

  RLM_HANDLE rlm_handle;
  RLM_LICENSE rlm_license;

  bool isCorrectBaseVersion(string rlm_str);
  bool areAllParamsCorrect(string product_name, string buildDate,
                           string rlm_str);

public:
  LicenseManagerBase(string _pName, string _pVersion, string _baseVer,
                     string _licenseDir, int _retries)
      : pName(_pName), pVersionDate(_pVersion), baseVer(_baseVer),
        licenseDir(_licenseDir), retries(_retries),
        rlm_handle(nullptr), rlm_license(nullptr) {}

  int checkLicense();
  int selectProduct(RLM_PRODUCTS products);

};



#endif /* LLVM_CLANG_TOOLS_CLANG_TOOLS_DRIVER_LICENSEMANAGERBASE_H_ */
