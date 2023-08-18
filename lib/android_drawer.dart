// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/calendar_tab.dart';
import '/chat_tab.dart';
import '/profile_tab.dart';
import '/smart_key_tab.dart';

class AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.green),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Icon(
                Icons.account_circle,
                color: Colors.green.shade800,
                size: 96,
              ),
            ),
          ),
          ListTile(
            leading: CalendarTab.androidIcon,
            title: const Text(CalendarTab.title),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: ChatTab.androidIcon,
            title: const Text(ChatTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatTab(
                            appId: "36FB6EA9-27A7-44F1-9696-72E1E21033B6",
                            userId: "me",
                            otherUserIds: ["user1", "user2"],
                          )));
            },
          ),
          ListTile(
            leading: SmartKeyTab.androidIcon,
            title: const Text(SmartKeyTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => const SmartKeyTab()));
            },
          ),
          // Long drawer contents are often segmented.
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          // ListTile(
          //   leading: SettingsTab.androidIcon,
          //   title: const Text(SettingsTab.title),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push<void>(context,
          //         MaterialPageRoute(builder: (context) => const SettingsTab()));
          //   },
          // ),
          ListTile(
            leading: ProfileTab.androidIcon,
            title: const Text(ProfileTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => const ProfileTab()));
            },
          ),
        ],
      ),
    );
  }
}
