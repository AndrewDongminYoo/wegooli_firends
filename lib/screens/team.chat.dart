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
class DashChatWithFriendsPage extends GetWidget<ConnectionController> {
  @override
  Widget build(BuildContext context) {
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
                    (message, previousMessage, nextMessage) => BoxDecoration(
                        color: message.user.id ==
                                UserController.to.currentUser.value.id
                            ? Color(0xFFFFE142)
                            : Color(0x33A4A8AF),
                        borderRadius: BorderRadius.circular(15)),
                // borderRadius: 18.0,
                textColor: Color(0xFF222222),
                containerColor: Color(0x33A4A8AF),
                currentUserTextColor: Color(0xFF222222),
                currentUserContainerColor: Color(0xFFFFE142),
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
                      color: Color(0xFF000000),
                      iconSize: 24);
                },
                leading: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Color(0xFF000000),
                      ),
                      onPressed: () async {
                        await controller.getImage(ImageSource.gallery);
                      })
                ],
                cursorStyle: CursorStyle(color: const Color(0xFF000000)),
                inputDecoration: InputDecoration(
                    fillColor: Color(0x33A4A8AF),
                    filled: true,
                    hintText: '채팅을 입력해주세요😃',
                    hintStyle:
                        TextStyle(color: Color(0xFF91969D), fontSize: 15),
                    constraints: BoxConstraints.expand(
                      height: getVerticalSize(36),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide.none,
                        gapPadding: 0))),
            messageListOptions: MessageListOptions(onLoadEarlier: () async {
              await Future.delayed(const Duration(seconds: 3));
            }),
            typingUsers: <ChatUser>[],
          ),
          bottomNavigationBar:
              CustomBottomNavBar(onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          })),
    );
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
