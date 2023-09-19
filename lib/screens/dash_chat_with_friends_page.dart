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
import '/lib.dart';

class DashChatWithFriendsPage extends GetWidget<ConnectionController> {
  const DashChatWithFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: CustomAppBar.getFriendsTypoAppBar(),
        body: Obx(
          () => DashChat(
            currentUser: controller.asDashChatUser(SendbirdSdk().currentUser),
            messages: controller.asDashChatMessages(),
            onSend: controller.onSendChatMessage,
            messageOptions: MessageOptions(
                messageDecorationBuilder:
                    (message, previousMessage, nextMessage) => BoxDecoration(
                        color:
                            message.user.id == UserController.to.currentUser.id
                                ? ColorConstant.primaryDefault
                                : ColorConstant.neutralDisabled,
                        borderRadius: BorderRadius.circular(15)),
                textColor: ColorConstant.fontBlack,
                containerColor: ColorConstant.neutralDisabled,
                currentUserTextColor: ColorConstant.fontBlack,
                currentUserContainerColor: ColorConstant.primaryDefault,
                timeFontSize: 12),
            inputOptions: InputOptions(
              sendOnEnter: true,
              alwaysShowSend: true,
              sendButtonBuilder: (void Function() onSend) => IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: onSend,
                  color: Colors.black,
                  iconSize: 24),
              leading: <Widget>[
                IconButton(
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
                    onPressed: () async {
                      await controller.getImage(ImageSource.gallery);
                    }),
              ],
              cursorStyle: const CursorStyle(color: Colors.black),
              inputDecoration: InputDecoration(
                fillColor: ColorConstant.neutralDisabled,
                filled: true,
                hintText: '채팅을 입력해주세요😃',
                hintStyle: TextStyle(color: appTheme.gray50001, fontSize: 15),
                constraints: BoxConstraints.expand(
                  height: 36.v,
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
        ));
  }
}
