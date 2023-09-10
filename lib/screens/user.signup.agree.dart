// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AcceptTerms extends StatefulWidget {
  const AcceptTerms({super.key});
  @override
  State<AcceptTerms> createState() => _AcceptTermsState();
}

class _AcceptTermsState extends State<AcceptTerms> {
  List<AccountAgreementModel> accountAgreement =
      List.generate(7, (index) => AccountAgreementModel(agreeYn: 'N'));
  bool isAcceptedTerm0 = false;
  bool isAcceptedTerm1 = false;
  bool isAcceptedTerm2 = false;
  bool isAcceptedTerm3 = false;
  bool isAcceptedTerm4 = false;
  bool isAcceptedTerm5 = false;
  bool isAcceptedTerm6 = false;
  bool _isAllTermsAccepted = false;

  bool get isAllTermsAccepted {
    if (isAcceptedTerm0 &&
        isAcceptedTerm1 &&
        isAcceptedTerm2 &&
        isAcceptedTerm3 &&
        isAcceptedTerm4 &&
        isAcceptedTerm5 &&
        isAcceptedTerm6) {
      _isAllTermsAccepted = true;
    }
    return _isAllTermsAccepted;
  }

  set isAllTermsAccepted(bool e) {
    isAcceptedTerm0 = e;
    isAcceptedTerm1 = e;
    isAcceptedTerm2 = e;
    isAcceptedTerm3 = e;
    isAcceptedTerm4 = e;
    isAcceptedTerm5 = e;
    isAcceptedTerm6 = e;
    _isAllTermsAccepted = true;
  }

  void checkAll(bool value) {
    isAcceptedTerm1 = value;
    isAcceptedTerm2 = value;
    isAcceptedTerm3 = value;
    isAcceptedTerm4 = value;
    isAcceptedTerm5 = value;
    isAcceptedTerm6 = value;
  }

  @override
  Widget build(BuildContext context) {
        return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.acceptTerms),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 29),
            child: Padding(
                padding: getPadding(left: 23, right: 23, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: getVerticalSize(20),
                        width: getHorizontalSize(126),
                        child: Align(
                          child: Obx(
                            () => CustomCheckboxButton(
                                alignment: Alignment.center,
                                text: l10ns.acceptAll,
                                value: isAllTermsAccepted,
                                onChange: (value) {
                                  isAllTermsAccepted = value;
                                }),
                          ),
                        )),
                    Padding(
                        padding: getPadding(top: 53),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => CustomCheckboxButton(
                                  text: l10ns.termsOfServiceRequiredAgreement,
                                  value: isAcceptedTerm0,
                                  onChange: (value) {
                                    isAcceptedTerm0 = value;
                                  })),
                              CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(18),
                                  width: getSize(18),
                                  margin: getMargin(bottom: 2)),
                            ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => CustomCheckboxButton(
                                  text: l10ns.privacyPolicyRequiredConsent,
                                  value: isAcceptedTerm1,
                                  onChange: (value) {
                                    isAcceptedTerm1 = value;
                                  })),
                              CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(18),
                                  width: getSize(18),
                                  margin: getMargin(bottom: 2)),
                            ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => CustomCheckboxButton(
                                  text:
                                      l10ns.carRentalTermsAndConditionsRequired,
                                  value: isAcceptedTerm2,
                                  onChange: (value) {
                                    isAcceptedTerm2 = value;
                                  })),
                              CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(18),
                                  width: getSize(18),
                                  margin: getMargin(bottom: 2)),
                            ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => CustomCheckboxButton(
                                  text: l10ns.locationBasedServicesTerms,
                                  value: isAcceptedTerm3,
                                  onChange: (value) {
                                    isAcceptedTerm3 = value;
                                  })),
                              CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(18),
                                  width: getSize(18),
                                  margin: getMargin(bottom: 2)),
                            ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Row(children: [
                          Expanded(
                            child: Obx(
                              () => CustomCheckboxButton(
                                  text: l10ns
                                      .consentToCollectionAndUseOfVehicleLocationInfo,
                                  value: isAcceptedTerm4,
                                  onChange: (value) {
                                    isAcceptedTerm4 = value;
                                  }),
                            ),
                          ),
                          CustomImageView(
                              svgPath: Assets.svg.imgArrowLeft.path,
                              height: getSize(18),
                              width: getSize(18),
                              margin: getMargin(left: 10, bottom: 2)),
                        ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Row(children: [
                          Expanded(
                            child: Obx(
                              () => CustomCheckboxButton(
                                  text: l10ns.useOfPersonalInfoForMarketing,
                                  value: isAcceptedTerm5,
                                  onChange: (value) {
                                    isAcceptedTerm5 = value;
                                  }),
                            ),
                          ),
                          CustomImageView(
                              svgPath: Assets.svg.imgArrowLeft.path,
                              height: getSize(18),
                              width: getSize(18),
                              margin: getMargin(left: 40, bottom: 2)),
                        ])),
                    const SignUpAcceptTermsNextButton(),
                  ],
                )),
          )),
    ));
  }
}
