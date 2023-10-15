import 'bloc/schedules_container_bloc.dart';import 'models/schedules_container_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_profile_page/mypage_profile_page.dart';import 'package:wegooli_friends_app/presentation/schedules_page/schedules_page.dart';import 'package:wegooli_friends_app/presentation/send_bird_chat_page/send_bird_chat_page.dart';import 'package:wegooli_friends_app/presentation/smart_key_screen_page/smart_key_screen_page.dart';import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class SchedulesContainerScreen extends StatelessWidget {SchedulesContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<SchedulesContainerBloc>(create: (context) => SchedulesContainerBloc(SchedulesContainerState(schedulesContainerModelObj: SchedulesContainerModel()))..add(SchedulesContainerInitialEvent()), child: SchedulesContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SchedulesContainerBloc, SchedulesContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.schedulesPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {})));}); } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.schedulesPage: return SchedulesPage.builder(context); case AppRoutes.sendBirdChatPage: return SendBirdChatPage.builder(context); case AppRoutes.smartKeyScreenPage: return SmartKeyScreenPage.builder(context); case AppRoutes.mypageProfilePage: return MypageProfilePage.builder(context); default: return SchedulesPage.builder(context);} } 
 }
