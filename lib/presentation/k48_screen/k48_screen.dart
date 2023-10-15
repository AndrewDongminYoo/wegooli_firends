import 'bloc/k48_bloc.dart';
import 'models/k48_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

class K48Screen extends StatelessWidget {
  const K48Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K48Bloc>(
      create: (context) => K48Bloc(K48State(
        k48ModelObj: K48Model(),
      ))
        ..add(K48InitialEvent()),
      child: K48Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K48Bloc, K48State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 240.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl152".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 10.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.outlineRedA,
                        child: Text(
                          "lbl_asasas".tr,
                          style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "msg18".tr,
                        style: CustomTextStyles.bodyLargeNotoSansKRRedA700,
                      ),
                    ],
                  ),
                  SizedBox(height: 43.v),
                  Text(
                    "lbl153".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 10.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.outlineRedA,
                        child: Text(
                          "lbl_asasas_efefe".tr,
                          style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "msg18".tr,
                        style: CustomTextStyles.bodyLargeNotoSansKRRedA700,
                      ),
                    ],
                  ),
                  SizedBox(height: 43.v),
                  Text(
                    "lbl154".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 10.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.outlineRedA,
                        child: Text(
                          "msg_asasas_naver_com".tr,
                          style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "lbl155".tr,
                        style: CustomTextStyles.bodyLargeNotoSansKRRedA700,
                      ),
                    ],
                  ),
                  SizedBox(height: 43.v),
                  Text(
                    "msg_xx".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.outlineGray700,
                    child: Text(
                      "msg_asasas_asasas_co".tr,
                      style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
