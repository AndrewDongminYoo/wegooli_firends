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
  List<Agreement> acceptTerms = [
    Agreement(title: '[필수] 개인정보 처리방침', markdown: privacy_policy),
    Agreement(title: '[필수] 개인 위치정보 처리 방침', markdown: location_data),
    Agreement(title: '[필수] 서비스이용약관', markdown: terms_of_service),
    Agreement(title: '[필수] 위치기반서비스 이용약관', markdown: location_based),
    Agreement(title: '[필수] 자동차대여 표준약관', markdown: car_rental_term),
    Agreement(title: '[필수] 차량 위치정보 수집이용 제공동의', markdown: vehicle_location),
    Agreement(
        title: '[선택] 마케팅 목적 개인정보 수집이용',
        markdown: marketing_purpose,
        required: false),
  ];

  List<bool> agreements = List<bool>.filled(7, false);
  Duration delay = const Duration(milliseconds: 100);
  bool get getAllTermsAccepted {
    return agreements.every((term) => term);
  }

  // 전체 항목 동의
  void setAllTermsAccepted(bool? value) async {
    if (!getAllTermsAccepted) {
      for (int i = 0; i < agreements.length; i++) {
        // if (acceptTerms[i].required) {
        await Future.delayed(delay);
        setState(() {
          agreements[i] = value!;
        });
      }
    } else {
      agreements = List<bool>.filled(7, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.acceptTerms),
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
                          itemCount: acceptTerms.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AgreementItem(
                              index: index,
                              values: agreements,
                              terms: acceptTerms,
                            );
                          }),
                    ],
                  )),
            )),
      ),
      bottomNavigationBar: const SignUpAcceptTermsNextButton(),
    ));
  }
}

class AgreementItem extends StatefulWidget {
  AgreementItem({
    Key? key,
    required this.values,
    required this.index,
    required this.terms,
  }) : super(key: key);

  final int index;
  final List<bool> values;
  final List<Agreement> terms;

  @override
  State<AgreementItem> createState() => _AgreementItemState();
}

class _AgreementItemState extends State<AgreementItem> {
  @override
  Widget build(BuildContext context) {
    var term = widget.terms[widget.index];
    return Padding(
        padding: getPadding(top: 14),
        child: Unfocused(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckboxButton(
                  text: term.title,
                  value: widget.values[widget.index],
                  onChange: (bool value) {
                    setState(() {
                      widget.values[widget.index] = value;
                    });
                  }),
              CustomImageView(
                  svgPath: Assets.svg.imgArrowRight.path,
                  height: getSize(18),
                  width: getSize(18),
                  margin: getMargin(bottom: 2),
                  onTap: () => Get.to(() {
                        return TermsOfUseView(
                            content: term.markdown, title: term.title);
                      })),
            ],
          ),
        ));
  }
}

class Agreement {
  const Agreement({
    required this.title,
    required this.markdown,
    this.required = true,
  });

  final String title;
  final bool required;
  final String markdown;
}
