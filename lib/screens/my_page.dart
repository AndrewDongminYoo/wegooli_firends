// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('user.id ${goolier.id}');
    return Navigator(
      key: Get.nestedKey(1),
      initialRoute: AppRoutes.sharedSchedule,
      observers: [GetObserver((_) {}, Get.routing)],
      onGenerateRoute: (RouteSettings settings) {
        final page = switch (settings.name) {
          AppRoutes.sharedSchedule => const SharedCalendar(),
          AppRoutes.teamInvitation => const TeamInvitation(),
          AppRoutes.bookDatetimePicker => const DatetimePickerBottomSheet(),
          AppRoutes.reservationsCheck => const ReservationsCheckingPageDialog(),
          AppRoutes.chatWithTeam => const DashChatWithFriendsPage(),
          AppRoutes.carSmartKey => const CarStatusPage(),
          AppRoutes.carStatusInfo => const CarStatusDetail(),
          AppRoutes.registeredCardList => const MyProfileCardList(),
          AppRoutes.myProfile => const MyProfilePage(),
          AppRoutes.profileInfoPage => const MyProfileDetail(),
          AppRoutes.noSubscription => const NoSubscription(),
          AppRoutes.unsubscribeConfirm => const UnsubscriptionConfirm(),
          AppRoutes.upcomingUnsubscription => const UnsubscriptionUpcoming(),
          _ => const SharedCalendar(),
        };
        return GetPageRoute<dynamic>(
            settings: settings,
            page: () => page,
            transition: Transition.native,
            middlewares: [AuthMiddleware()]);
      },
    );
  }
}
