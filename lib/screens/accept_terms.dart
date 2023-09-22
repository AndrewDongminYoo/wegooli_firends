// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class AcceptTerms extends StatefulWidget {
  const AcceptTerms({super.key});
  @override
  State<AcceptTerms> createState() => _AcceptTermsState();
}

class _AcceptTermsState extends State<AcceptTerms> {
  final controller = UserController.to;
  Duration delay = const Duration(milliseconds: 100);
  Iterable<Term> allTerms = [];
  Iterable<Term> requiredTerms = [];

  @override
  void initState() {
    allTerms = controller.terms;
    requiredTerms = allTerms.where((term) => !term.opt);
    super.initState();
  }

  bool get allTermsAccepted {
    return allTerms.every((element) => element.agree);
  }

  bool get allRequiredTermsAccepted {
    return requiredTerms.every((element) => element.agree);
  }

  Future<void> setAllTermsAccepted(bool value) async {
    for (var i = 0; i < allTerms.length; i++) {
      await Future.delayed(delay);
      allTerms.elementAt(i).agree = value;
    }
  }

  Future<void> setAllRequiredTermsAccepted(bool value) async {
    for (var i = 0; i < requiredTerms.length; i++) {
      await Future.delayed(delay);
      requiredTerms.elementAt(i).agree = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('AAA : isDisabled $isDisabled');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.minimalAppBar(l10ns.acceptTerms),
      body: Unfocused(
        child: Container(
            width: mediaQueryData.size.width,
            padding: getPadding(top: 29, left: 16, right: 16, bottom: 5),
            child: SingleChildScrollView(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20.v,
                        width: 126.h,
                        child: Align(
                          child: CustomCheckboxButton(
                            alignment: Alignment.center,
                            text: l10ns.acceptAll,
                            value: allTermsAccepted,
                            onChange: (bool value) {
                              setAllTermsAccepted(value);
                            },
                          ),
                        )),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.terms.length,
                        itemBuilder: (BuildContext context, int index) {
                          return AgreementItem(
                            index: index,
                            terms: controller.terms,
                          );
                        }),
                  ],
                ),
              ),
            )),
      ),
      bottomNavigationBar: Container(
          margin: getMargin(left: 24, right: 28, bottom: 41),
          decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: AppDecoration.shadows,
          ),
          child: CustomElevatedButton(
            text: l10ns.acceptanceComplete,
            isDisabled: !allRequiredTermsAccepted,
            buttonStyle: allRequiredTermsAccepted
                ? CustomButtonStyles.fillPrimaryC26
                : CustomButtonStyles.fillAmberA200C5,
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: goPhoneAuth,
          )),
    );
  }
}
