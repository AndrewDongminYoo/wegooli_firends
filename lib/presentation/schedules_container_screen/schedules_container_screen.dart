// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_profile_page/mypage_profile_page.dart';
import '/presentation/schedules_container_screen/bloc/schedules_container_bloc.dart';
import '/presentation/schedules_container_screen/models/schedules_container_model.dart';
import '/presentation/schedules_page/schedules_page.dart';
import '/presentation/send_bird_chat_page/send_bird_chat_page.dart';
import '/presentation/smart_key_screen_page/smart_key_screen_page.dart';
import '/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SchedulesContainerScreen extends StatelessWidget {
  SchedulesContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SchedulesContainerBloc>(
        create: (context) => SchedulesContainerBloc(SchedulesContainerState(
            schedulesContainerModelObj: SchedulesContainerModel()))
          ..add(SchedulesContainerInitialEvent()),
        child: SchedulesContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SchedulesContainerBloc, SchedulesContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.schedulesPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration.zero)),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {})));
    });
  }

  /// Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.schedulesPage:
        return SchedulesPage.builder(context);
      case AppRoutes.sendBirdChatPage:
        return SendBirdChatPage.builder(context);
      case AppRoutes.smartKeyScreenPage:
        return SmartKeyScreenPage.builder(context);
      case AppRoutes.mypageProfilePage:
        return MyPageProfilePage.builder(context);
      default:
        return SchedulesPage.builder(context);
    }
  }
}
