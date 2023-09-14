// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

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

class AgreementItem extends StatefulWidget {
  AgreementItem({
    Key? key,
    required this.index,
    required this.terms,
  }) : super(key: key);

  final int index;
  final List<Term> terms;

  @override
  State<AgreementItem> createState() => _AgreementItemState();
}

class _AgreementItemState extends State<AgreementItem> {
  @override
  Widget build(BuildContext context) {
    final term = widget.terms[widget.index];
    return Padding(
        padding: getPadding(top: 14),
        child: Unfocused(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckboxButton(
                  text: term.title,
                  value: term.agree,
                  onChange: (bool value) {
                    setState(() {
                      term.agree = value;
                    });
                  }),
              CustomImageView(
                svgPath: Assets.svg.imgArrowRight.path,
                height: getSize(18),
                width: getSize(18),
                margin: getMargin(bottom: 2),
                onTap: () => Get.toNamed(
                  AppRoutes.acceptTermsDetail,
                  arguments: {'page': '${widget.index}'},
                ),
              ),
            ],
          ),
        ));
  }
}

class Term {
  Term({
    required this.title,
    required this.body,
    required this.agree,
    this.opt = false,
  });

  final String title;
  final bool opt;
  final String body;
  bool agree;
}
