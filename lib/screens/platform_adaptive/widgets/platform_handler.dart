// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'android_drawer.dart';
import 'calendar_tab.dart';
import 'chat_tab.dart';
import 'platform_widgets.dart';
import 'profile_tab.dart';
import 'smart_key_tab.dart';

class PlatformHandler extends StatefulWidget {
  const PlatformHandler({super.key});

  @override
  State<PlatformHandler> createState() => _PlatformHandlerState();
}

class _PlatformHandlerState extends State<PlatformHandler> {
  // This app keeps a global key for the songs tab because it owns a bunch of
  // data. Since changing platform re-parents those tabs into different
  // scaffolds, keeping a global key to it lets this app keep that tab's data as
  // the platform toggles.
  //
  // This isn't needed for apps that doesn't toggle platforms while running.
  // final calendarTabKey = GlobalKey();

  // In Material, this app uses the hamburger menu paradigm and flatly lists
  // all 4 possible tabs. This drawer is injected into the songs tab which is
  // actually building the scaffold around the drawer.
  Widget _buildAndroidHomePage(BuildContext context) {
    const title = '일정';
    const androidIcon = Icon(Icons.calendar_month_outlined, size: 28.0);
    return CalendarTab(
      // key: calendarTabKey,
      androidDrawer: AndroidDrawer(
        title: title,
        androidIcon: androidIcon,
      ),
    );
  }

  // On iOS, the app uses a bottom tab paradigm. Here, each tab view sits inside
  // a tab in the tab scaffold. The tab scaffold also positions the tab bar
  // in a row at the bottom.
  //
  // An important thing to note is that while a Material Drawer can display a
  // large number of items, a tab bar cannot. To illustrate one way of adjusting
  // for this, the app folds its fourth tab (the settings page) into the
  // third tab. This is a common pattern on iOS.
  Widget _buildIosHomePage(BuildContext context) {
    const title = '일정';
    const iosIcon = Icon(CupertinoIcons.calendar, size: 28.0);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            label: title,
            icon: iosIcon,
          ),
          BottomNavigationBarItem(
            label: ChatTab.title,
            icon: ChatTab.iosIcon,
          ),
          BottomNavigationBarItem(
            label: SmartKeyTab.title,
            icon: SmartKeyTab.iosIcon,
          ),
          BottomNavigationBarItem(
            label: ProfileTab.title,
            icon: ProfileTab.iosIcon,
          ),
        ],
      ),
      tabBuilder: (context, index) {
        assert(index <= 3 && index >= 0, 'Unexpected tab index: $index');
        return switch (index) {
          0 => CupertinoTabView(
              defaultTitle: title,
              builder: (context) => CalendarTab(),
            ),
          1 => CupertinoTabView(
              defaultTitle: ChatTab.title,
              builder: (context) => ChatTab(
                appId: "36FB6EA9-27A7-44F1-9696-72E1E21033B6",
                userId: "me",
                otherUserIds: ["user1", "user2"],
              ),
            ),
          2 => CupertinoTabView(
              defaultTitle: SmartKeyTab.title,
              builder: (context) => const SmartKeyTab(),
            ),
          3 => CupertinoTabView(
              defaultTitle: ProfileTab.title,
              builder: (context) => const ProfileTab(),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}