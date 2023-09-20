// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterLicense extends GetWidget<LicenseController> {
  const RegisterLicense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.driverSLicenseRegistration),
      body: Unfocused(
        child: SingleChildScrollView(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
                child: Column(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.licenseType),
                        const LicenseTypeDropdown(),
                      ]),
                  Padding(
                      padding: getPadding(top: 26),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: getPadding(right: 4),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomInputLabel(
                                          labelText: l10ns.licenseType),
                                      const LicenseRegionDropdown(),
                                    ]),
                              ),
                            ),
                            const Expanded(child: LicenseIssuedYearDropdown()),
                          ])),
                  LicenseNumbersFormField(
                      controller: controller.licenseNumbers),
                  Padding(
                      padding: getPadding(top: 26),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInputLabel(
                                labelText:
                                    l10ns.eligibilityPeriodTestExpirationDate),
                            LicenseExpDateFormField(
                                controller: controller.expirationDate),
                          ])),
                  Padding(
                      padding: getPadding(top: 26, bottom: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInputLabel(labelText: l10ns.licenseIssueDate),
                            LicenseIssuedDateFormField(
                                controller: controller.expirationDate),
                          ])),
                ]))),
      ),
      bottomNavigationBar: Container(
        margin: getMargin(left: 15, right: 17, bottom: 29),
        child: CustomElevatedButton(
            text: l10ns.registrationComplete, // '등록 완료'
            buttonStyle: CustomButtonStyles.fillPrimaryC26,
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () {
              if (controller.licenseInputSucceed) {
                signUpCreditCard();
              }
            }),
      ),
    );
  }
}
