// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 📦 Package imports:
import 'package:sendbird_sdk/sendbird_sdk.dart';

Future<GroupChannel> getChannelBetween(
  String currentUserId,
  List<String> otherUserIds,
) async {
  try {
    final query = GroupChannelListQuery()
      ..userIdsExactlyIn = otherUserIds
      ..limit = 1;
    final channels = await query.loadNext();
    if (channels.isEmpty) {
      return GroupChannel.createChannel(
          GroupChannelParams()..userIds = [currentUserId] + otherUserIds);
    }
    return channels[0];
  } catch (e) {
    throw e;
  }
}
