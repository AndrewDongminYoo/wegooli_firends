// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k58_screen/bloc/k58_bloc.dart';
import '/ui/k58_screen/models/k58_model.dart';

class K58Screen extends StatelessWidget {
  const K58Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K58Bloc>(
      create: (context) => K58Bloc(K58State(
        k58ModelObj: K58Model(),
      ))
        ..add(K58InitialEvent()),
      child: const K58Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K58Bloc, K58State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 240.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lbl169'.tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 10.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineRedA,
                        child: Text(
                          'lbl118'.tr,
                          style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        'lbl170'.tr,
                        style: CustomTextStyles.bodyLargeNotoSansKRRedA700,
                      ),
                    ],
                  ),
                  SizedBox(height: 50.v),
                  Text(
                    'lbl171'.tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 10.v),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineRedA,
                        child: Text(
                          'lbl118'.tr,
                          style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        'lbl172'.tr,
                        style: CustomTextStyles.bodyLargeNotoSansKRRedA700,
                      ),
                    ],
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
