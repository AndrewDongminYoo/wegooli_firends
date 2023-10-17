// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import 'controller/contact_us_inquiry_history_expanded_controller.dart';
import 'models/contact_us_inquiry_history_expanded_model.dart';

// ignore: must_be_immutable
class ContactUsInquiryHistoryExpandedPage extends StatelessWidget {
  ContactUsInquiryHistoryExpandedPage({Key? key}) : super(key: key);

  ContactUsInquiryHistoryExpandedController controller = Get.put(
      ContactUsInquiryHistoryExpandedController(
          ContactUsInquiryHistoryExpandedModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 15.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '[문의] 우리 애기는 아래발치에서 코올코올. 고양이는 부뜨막에서 가릉가릉,',
                                    style: textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    '2023.08.23',
                                    style: textTheme.bodySmall!.copyWith(
                                      color:
                                          lightTheme.onPrimary.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                              CustomOutlinedButton(
                                width: 52.h,
                                text: '처리중',
                                margin: EdgeInsets.only(
                                  left: 42.h,
                                  top: 4.v,
                                  bottom: 2.v,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 9.v,
                                  bottom: 7.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          const Divider(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 15.v,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '[문의] 우리 애기는 아래발치에서 코올코올. 고양이는 부뜨막에서 가릉가릉,',
                                      style: textTheme.titleSmall,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      '2023.08.23',
                                      style: textTheme.bodySmall!.copyWith(
                                        color: lightTheme.onPrimary
                                            .withOpacity(0.4),
                                      ),
                                    ),
                                  ],
                                ),
                                CustomOutlinedButton(
                                  width: 65.h,
                                  text: '답변 완료',
                                  margin: EdgeInsets.only(
                                    left: 29.h,
                                    top: 4.v,
                                    bottom: 2.v,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    top: 9.v,
                                    bottom: 7.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 322.h,
                            margin: EdgeInsets.only(
                              left: 1.h,
                              top: 7.v,
                              right: 7.h,
                            ),
                            child: Text(
                              '계절이 지나가는 하늘에는 가을로 가득 차 있습니다. 나는 아무 걱정도 없이 가을 속의 별들을 다 헤일 듯합니다. 가슴속에 하나 둘 새겨지는 별을 이제 다 못 헤는 것은 쉬이 아침이 오는 까닭이요, 내일 밤이 남은 까닭이요, 아직 나의 청춘이 다하지 않은 까닭입니다. 별 하나에 추억과 별 하나의 사랑과 별 하나에 쓸쓸함과 별 하나에 동경과 별 하나에 시와 별 하나에 어머니, 어머니, 어머님, 나는 별 하나에 아름다운 말 한 마디씩 불러 봅니다. 소학교 때 책상을 같이 했던 아이들의 이름과, 패, 경, 옥 이런 이국 소녀들의 이름과 벌써 애기 어머니 된 계집애들의 이름과, 가난한 이웃 사람들의 이름과, 비둘기, 강아지, 토끼, 노새, 노루, 프랑시스 잠, 라이너 마리아 릴케 이런 시인의 이름을 불러 봅니다. 이네들은 너무나 멀리 있습니다. 별이 아스라히 멀듯이, 어머님, 그리고 당신은 멀리 북간도에 계십니다. 나는 무엇인지 그리워 이 많은 별빛이 내린 언덕 위에 내 이름자를 써 보고, 흙으로 덮어 버리었습니다. 딴은 밤을 새워 우는 벌레는 부끄러운 이름을 슬퍼하는 까닭입니다. 그러나 겨울이 지나고 나의 별에도 봄이 오면 무덤 위에 파란 잔디가 피어나듯이 내 이름자 묻힌 언덕 위에도 자랑처럼 풀이 무성할 거외다.',
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodySmall!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 10.v,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSubdirectoryarrowright,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    '답변',
                                    style: textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            child: Container(
                              width: 302.h,
                              margin: EdgeInsets.only(
                                left: 21.h,
                                top: 5.v,
                                right: 7.h,
                              ),
                              child: Text(
                                '산모퉁이를 돌아 논가 외딴 우물을 홀로 찾아가선 가만히 들여다봅니다. 우물 속에는 달이 밝고 구름이 흐르고 하늘이 펼치고 파아란 바람이 불고 가을이 있읍니다. 그리고 한 사나이가 있읍니다. 어쩐지 그 사나이가 미워져 돌아갑니다. 돌아가다 생각하니 그 사나이가 가엾어집니다. 도로 가 들여다보니 사나이는 그대로 있읍니다. 다시 그 사나이가 미워져 돌아갑니다. 돌아가다 생각하니 그 사나이가 그리워집니다. 우물 속에는 달이 밝고 구름이 흐르고 하늘이 펼치고 파아란 바람이 불고 가을이 있고 추억처럼 사나이가 있읍니다.',
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.bodySmall!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          const Divider(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 166.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 15.v),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '[문의] 우리 애기는 아래발치에서 코올코올. 고양이는 부뜨막에서 가릉가릉,',
                                            style: textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 3.v),
                                          Text(
                                            '2023.08.23',
                                            style:
                                                textTheme.bodySmall!.copyWith(
                                              color: lightTheme.onPrimary
                                                  .withOpacity(0.4),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomOutlinedButton(
                                        width: 65.h,
                                        text: '답변 완료',
                                        margin: EdgeInsets.only(
                                          left: 29.h,
                                          top: 4.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 10.h,
                                          top: 9.v,
                                          bottom: 7.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 17.v),
                                  const Divider(),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 29.v,
                              ),
                              decoration: BoxDecoration(
                                color: lightTheme.onPrimaryContainer,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: const Offset(
                                      2,
                                      2,
                                    ),
                                  ),
                                ],
                              ),
                              child: CustomElevatedButton(
                                text: '버튼명',
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF3F3F6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26.h),
                                  ),
                                ),
                                buttonTextStyle:
                                    textTheme.titleMedium!.copyWith(
                                  color: const Color(0xFFB0B2BC),
                                  fontSize: 18.fSize,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
