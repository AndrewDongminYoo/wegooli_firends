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
  bool get getAllTermsAccepted {
    return controller.terms.every((term) => term.agree);
  }

  // 전체 항목 동의
  Future<void> setAllTermsAccepted(bool? value) async {
    for (var i = 0; i < controller.terms.length; i++) {
      // if (acceptTerms[i].required) // 필수항목만
      await Future.delayed(delay);
      setState(() {
        controller.terms[i].agree = value!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.minimalAppBar(l10ns.acceptTerms),
      body: Unfocused(
        child: SizedBox(
            width: mediaQueryData.size.width,
            child: SingleChildScrollView(
              padding: getPadding(top: 29),
              child: Padding(
                  padding: getPadding(left: 16, right: 16, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(20),
                          width: getHorizontalSize(126),
                          child: Align(
                            child: CustomCheckboxButton(
                              alignment: Alignment.center,
                              text: l10ns.acceptAll,
                              value: getAllTermsAccepted,
                              onChange: setAllTermsAccepted,
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
                  )),
            )),
      ),
      bottomNavigationBar: SignUpAcceptTermsNextButton(
        controller: controller,
      ),
    );
  }
}
