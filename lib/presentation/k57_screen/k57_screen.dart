// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k57_screen/bloc/k57_bloc.dart';
import '/presentation/k57_screen/models/k57_model.dart';
import '/widgets/custom_elevated_button.dart';

class K57Screen extends StatelessWidget {
  const K57Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K57Bloc>(
      create: (context) => K57Bloc(K57State(
        k57ModelObj: K57Model(),
      ))
        ..add(K57InitialEvent()),
      child: const K57Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K57Bloc, K57State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 50.v),
              child: Column(
                children: [
                  SizedBox(height: 159.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 103.h,
                          right: 103.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLayer2,
                              height: 108.v,
                              width: 135.h,
                            ),
                            SizedBox(height: 32.v),
                            SizedBox(
                              width: 153.h,
                              child: Text(
                                'lbl40'.tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall!.copyWith(
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomElevatedButton(
              text: 'lbl41'.tr,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 50.v,
              ),
            ),
          ),
        );
      },
    );
  }
}
