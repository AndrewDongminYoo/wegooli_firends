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
                                  UserController.to.currentUser.id
                              ? ColorConstant.actionPrimaryDefault
                              : ColorConstant.actionNeutralDisabled,
                          borderRadius: BorderRadius.circular(15)),
                  // borderRadius: 18.0,
                  textColor: ColorConstant.fontColorBlack,
                  containerColor: ColorConstant.actionNeutralDisabled,
                  currentUserTextColor: ColorConstant.fontColorBlack,
                  currentUserContainerColor: ColorConstant.actionPrimaryDefault,
                  timeFontSize: 12),
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
                        color: Color(0xFF000000),
                      ),
                      onPressed: () async {
                        await controller.getImage(ImageSource.gallery);
                      }),
                ],
                cursorStyle: const CursorStyle(color: Color(0xFF000000)),
                inputDecoration: InputDecoration(
                  fillColor: ColorConstant.actionNeutralDisabled,
                  filled: true,
                  hintText: '채팅을 입력해주세요😃',
                  hintStyle:
                      const TextStyle(color: Color(0xFF91969D), fontSize: 15),
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
