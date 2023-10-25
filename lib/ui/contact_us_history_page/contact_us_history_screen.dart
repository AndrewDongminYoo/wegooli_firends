// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/contact_us_history_page/contact_us_history_expanded_page.dart';
import '/ui/contact_us_history_page/contact_us_history_page.dart';
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
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '문의하기'),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 65.v,
                  width: double.maxFinite,
                  child: TabBar(
                    controller: controller.tabController,
                    isScrollable: true,
                    labelColor: lightTheme.onPrimary,
                    unselectedLabelColor: lightTheme.onPrimary.withOpacity(0.4),
                    tabs: [
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 46.h,
                            vertical: 11.v,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: lightTheme.primary,
                                width: 2.h,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('전체'),
                              Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: const Text('10'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 11.v,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0x33FFE142),
                                width: 1.h,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('답변 완료'),
                              Padding(
                                padding: EdgeInsets.only(top: 6.v),
                                child: const Text('10'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 39.h,
                            vertical: 11.v,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0x33FFE142),
                                width: 1.h,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text('처리중'),
                              Padding(
                                padding: EdgeInsets.only(top: 5.v),
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
                  height: 592.v,
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
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
