// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:sendbird_sdk/sendbird_sdk.dart';

Future<User> connectWithSendbird(
  String appId,
  String userId,
) async {
  try {
    final sendbird = SendbirdSdk(appId: appId);
    final user = await sendbird.connect(userId);
    return user;
  } catch (e) {
    throw e;
  }
}
