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
  const DashChatWithFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: theme.colorScheme.onPrimaryContainer,
          appBar: CustomAppBar.getFriendsTypoAppBar(),
          body: Obx(
            () => DashChat(
              currentUser: controller.asDashChatUser(SendbirdSdk().currentUser),
              messages: controller.asDashChatMessages(),
              onSend: controller.onSendChatMessage,
              messageOptions: MessageOptions(
                  messageDecorationBuilder:
                      (message, previousMessage, nextMessage) => BoxDecoration(
                          color: message.user.id ==
                                  UserController.to.currentUser.value.id
                              ? const Color(0xFFFFE142)
                              : const Color(0x33A4A8AF),
                          borderRadius: BorderRadius.circular(15)),
                  // borderRadius: 18.0,
                  textColor: const Color(0xFF222222),
                  containerColor: const Color(0x33A4A8AF),
                  currentUserTextColor: const Color(0xFF222222),
                  currentUserContainerColor: const Color(0xFFFFE142),
                  timeFontSize: 12,
                  showTime: false,
                  showOtherUsersName: true),
              inputOptions: InputOptions(
                sendOnEnter: true,
                alwaysShowSend: true,
                sendButtonBuilder: (Function onSend) {
                  return IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        onSend();
                      },
                      color: const Color(0xFF000000),
                      iconSize: 24);
                },
                leading: <Widget>[
                  IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: const Color(0xFF000000),
                      ),
                      onPressed: () async {
                        await controller.getImage(ImageSource.gallery);
                      })
                ],
                cursorStyle: const CursorStyle(color: const Color(0xFF000000)),
                inputDecoration: InputDecoration(
                  fillColor: const Color(0x33A4A8AF),
                  filled: true,
                  hintText: '채팅을 입력해주세요😃',
                  hintStyle: const TextStyle(
                      color: const Color(0xFF91969D), fontSize: 15),
                  constraints: BoxConstraints.expand(
                    height: getVerticalSize(36),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide.none,
                      gapPadding: 0),
                ),
              ),
              messageListOptions: MessageListOptions(onLoadEarlier: () async {
                await Future.delayed(const Duration(seconds: 3));
              }),
              typingUsers: const <ChatUser>[],
            ),
          )),
    );
  }
}
