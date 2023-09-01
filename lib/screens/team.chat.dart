// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class DashChatWithFriendsPage extends GetView<ConnectionController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getFriendsTypoAppBar(),
            body: DashChat(
                currentUser: controller.chatUser,
                messages: controller.chatMessages,
                onSend: controller.onSendChatMessage,
                messageOptions: MessageOptions(
                    messageDecorationBuilder:
                        (message, previousMessage, nextMessage) =>
                            BoxDecoration(
                                color: message.user.id ==
                                        UserController.to.currentUser.value.id
                                    ? Color.fromRGBO(255, 225, 66, 1)
                                    : Color.fromRGBO(164, 168, 175, 0.2),
                                borderRadius: BorderRadius.circular(15)),
                    // borderRadius: 18.0,
                    textColor: Color.fromRGBO(34, 34, 34, 1),
                    containerColor: Color.fromRGBO(164, 168, 175, 0.2),
                    currentUserTextColor: Color.fromRGBO(34, 34, 34, 1),
                    currentUserContainerColor: Color.fromRGBO(255, 225, 66, 1),
                    timeFontSize: 12,
                    showTime: false,
                    showOtherUsersName: true),
                inputOptions: InputOptions(
                    sendOnEnter: true,
                    alwaysShowSend: true,
                    sendButtonBuilder: (Function onSend) {
                      return IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            onSend();
                          },
                          color: Colors.black,
                          iconSize: 24);
                    },
                    leading: <Widget>[
                      IconButton(
                          icon: Icon(Icons.camera_alt, color: Colors.black),
                          onPressed: () async {
                            await controller.getImage(ImageSource.gallery);
                          })
                    ],
                    cursorStyle: CursorStyle(color: Colors.black),
                    inputDecoration: InputDecoration(
                        fillColor: Color.fromRGBO(164, 168, 175, 0.2),
                        filled: true,
                        hintText: '채팅을 입력해주세요😃',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(145, 150, 157, 1),
                            fontSize: 15),
                        constraints:
                            BoxConstraints.expand(height: getVerticalSize(36)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none,
                            gapPadding: 0))),
                messageListOptions: MessageListOptions(onLoadEarlier: () async {
                  await Future.delayed(const Duration(seconds: 3));
                }),
                typingUsers: <ChatUser>[])));
  }
}

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
