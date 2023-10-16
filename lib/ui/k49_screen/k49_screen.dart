// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k49_screen/bloc/k49_bloc.dart';
import '/ui/k49_screen/models/k49_model.dart';

class K49Screen extends StatelessWidget {
  const K49Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K49Bloc>(
      create: (context) => K49Bloc(K49State(
        k49ModelObj: K49Model(),
      ))
        ..add(K49InitialEvent()),
      child: const K49Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K49Bloc, K49State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 147.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 81.h,
                          right: 81.h,
                          bottom: 212.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'lbl_friends'.tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            SizedBox(height: 189.v),
                            CustomImageView(
                              svgPath: ImageConstant.imgLayer2Onerrorcontainer,
                              height: 96.v,
                              width: 163.h,
                            ),
                          ],
                        ),
                      ),
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
