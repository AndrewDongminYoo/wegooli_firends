// 🐦 Flutter imports:
import '../notices_one_screen/widgets/notices_one_item_widget.dart';
import 'controller/notices_one_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NoticesOneScreen extends GetWidget<NoticesOneController> {
  const NoticesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl38'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 15.v),
                      decoration: AppDecoration.fillAmberA,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('msg2'.tr, style: theme.textTheme.titleSmall),
                            SizedBox(height: 3.v),
                            Text('lbl_2023_08_23'.tr,
                                style: CustomTextStyles.bodySmallOnPrimary)
                          ])),
                  Expanded(
                      child: Obx(() => ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.symmetric(vertical: 0.5.v),
                                child: SizedBox(
                                    width: 329.h,
                                    child: Divider(
                                        height: 1.v,
                                        thickness: 1.v,
                                        color: appTheme.blueGray30033)));
                          },
                          itemCount: controller.noticesOneModelObj.value
                              .noticesOneItemList.value.length,
                          itemBuilder: (context, index) {
                            final model = controller.noticesOneModelObj.value
                                .noticesOneItemList.value[index];
                            return NoticesOneItemWidget(model);
                          })))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
