// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterLicense extends GetWidget<LicenseController> {
  const RegisterLicense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.driverSLicenseRegistration),
      body: Unfocused(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.licenseType),
                LicenseTypeDropdown(controller: controller),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomInputLabel(
                                      labelText: l10ns.licenseType),
                                  LicenseRegionDropdown(controller: controller),
                                ]),
                          ),
                        ),
                        Expanded(
                            child: LicenseIssuedYearDropdown(
                                controller: controller)),
                      ])),
              LicenseNumbersFormField(controller: controller),
              Padding(
                  padding: getPadding(top: 26),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText:
                                l10ns.eligibilityPeriodTestExpirationDate),
                        LicenseExpDateFormField(controller: controller),
                      ])),
              Padding(
                  padding: getPadding(top: 26, bottom: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.licenseIssueDate),
                        LicenseIssuedDateFormField(controller: controller),
                      ])),
            ])),
      ),
      bottomNavigationBar: SignUpLicenseNextButton(controller: controller),
    );
  }
}
