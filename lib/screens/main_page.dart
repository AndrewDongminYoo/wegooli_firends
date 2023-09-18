// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final user = UserController.to;

  @override
  Widget build(BuildContext context) {
    const id = 1;
    final navigatorKey = Get.nestedKey(id);
    return Scaffold(
      body: Navigator(
        key: navigatorKey,
        initialRoute: user.teams.isNotEmpty
            ? AppRoutes.sharedSchedule
            : AppRoutes.teamInvitation,
        onGenerateRoute: onGenerateRoute,
      ),
      bottomNavigationBar: CustomBottomNavBar(id: id),
    );
  }
}
