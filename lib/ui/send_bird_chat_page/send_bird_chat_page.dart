// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/send_bird_chat_controller.dart';
import 'models/send_bird_chat_model.dart';

// ignore: must_be_immutable
class SendBirdChatPage extends StatelessWidget {
  SendBirdChatPage({Key? key}) : super(key: key);

  SendBirdChatController controller =
      Get.put(SendBirdChatController(SendBirdChatModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: CustomImageView(
            svgPath: Assets.svg.imgFriends.path,
          ),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '방이름',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 95.h,
                    text: '안녕하세요',
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: lightTheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.h),
                      ),
                    ),
                    buttonTextStyle: textTheme.bodyMedium!.copyWith(
                      fontSize: 15.fSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 5.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 35.v,
                            bottom: 1.v,
                          ),
                          child: Text(
                            '12:20 PM',
                            style: textTheme.bodySmall!.copyWith(
                              color: const Color(0xFFB9BCC3),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: lightTheme.primary,
                            borderRadius: BorderRadiusStyle.circleBorder15,
                          ),
                          child: SizedBox(
                            width: 210.h,
                            child: Text(
                              '이번 주 주말에 차량 사용하려하는데\n필요하신 분 계신가요?',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: textTheme.bodyMedium!.copyWith(
                                fontSize: 15.fSize,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 61.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: Assets.images.placeholder.path,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                            SizedBox(height: 101.v),
                            CustomImageView(
                              imagePath: Assets.images.placeholder.path,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '닉네임',
                                style: textTheme.bodySmall!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.v,
                                  right: 43.h,
                                ),
                                child: Row(
                                  children: [
                                    CustomElevatedButton(
                                      height: 34.v,
                                      width: 192.h,
                                      text: '저는 사용 할 필요 없습니다.',
                                      buttonStyle: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0x33A4A8AF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.h),
                                        ),
                                      ),
                                      buttonTextStyle:
                                          textTheme.bodyMedium!.copyWith(
                                        color: Colors.black,
                                        fontSize: 15.fSize,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 5.h,
                                        top: 19.v,
                                      ),
                                      child: Text(
                                        '12:22 PM',
                                        style: textTheme.bodySmall!.copyWith(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFFB9BCC3),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 19.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 17.v,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        '12:25 PM',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: const Color(0xFFB9BCC3),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      height: 34.v,
                                      width: 168.h,
                                      text: '네 깨끗하게 사용할게요',
                                      margin: EdgeInsets.only(left: 5.h),
                                      buttonStyle: ElevatedButton.styleFrom(
                                        backgroundColor: lightTheme.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.h),
                                        ),
                                      ),
                                      buttonTextStyle:
                                          textTheme.bodyMedium!.copyWith(
                                        fontSize: 15.fSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 26.v),
                              Text(
                                '닉네임',
                                style: textTheme.bodySmall!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              CustomElevatedButton(
                                height: 34.v,
                                width: 215.h,
                                text: '저는 다음주 주말에 쓸거 같아요',
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0x33A4A8AF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17.h),
                                  ),
                                ),
                                buttonTextStyle: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                  fontSize: 15.fSize,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Row(
                                children: [
                                  CustomElevatedButton(
                                    height: 34.v,
                                    width: 138.h,
                                    text: '조심히 다녀오세요',
                                    buttonStyle: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0x33A4A8AF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17.h),
                                      ),
                                    ),
                                    buttonTextStyle:
                                        textTheme.bodyMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 15.fSize,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 17.v,
                                    ),
                                    child: Text(
                                      '12:15 PM',
                                      style: textTheme.bodySmall!.copyWith(
                                        color: const Color(0xFFB9BCC3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 124.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: Assets.svg.icoCamera.path,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          controller: controller.chatinputone,
                          margin: EdgeInsets.only(left: 8.h),
                          hintText: '채팅을 입력하세요.',
                          hintStyle: textTheme.bodyMedium!.copyWith(
                            color: const Color(0xFF91969D),
                            fontSize: 15.fSize,
                          ),
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 9.v,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillBlueGray,
                          fillColor: const Color(0x33A4A8AF),
                        ),
                      ),
                      CustomImageView(
                        svgPath: Assets.svg.icoSend.path,
                        height: 22.v,
                        width: 24.h,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
