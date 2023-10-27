// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/screens/contact_us_screen/contact_us_history_expanded_page.dart';
import '/screens/contact_us_screen/contact_us_history_page.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'controller/contact_us_history_controller.dart';

class ContactUsHistoryScreen extends StatelessWidget {
  const ContactUsHistoryScreen({super.key});
  static const routeName = '/contact_us/history';

  @override
  Widget build(BuildContext context) {
    final controller = ContactUsHistoryController.to;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '문의하기'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 65.h,
                  width: double.maxFinite,
                  child: TabBar(
                    controller: controller.tabController,
                    isScrollable: true,
                    labelColor: lightTheme.onPrimary,
                    unselectedLabelColor: Palette.fontBlack66,
                    tabs: [
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 46.w,
                            vertical: 11.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: lightTheme.primary,
                                width: 2.w,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('전체'),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: const Text('10'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.w,
                            vertical: 11.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0x33FFE142),
                                width: 1.w,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('답변 완료'),
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: const Text('10'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 39.w,
                            vertical: 11.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0x33FFE142),
                                width: 1.w,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('처리중'),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: const Text('10'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 592.h,
                  child: TabBarView(
                    controller: controller.tabController,
                    children: const [
                      ContactUsHistoryExpandedPage(),
                      ContactUsHistoryExpandedPage(),
                      ContactUsHistoryPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
