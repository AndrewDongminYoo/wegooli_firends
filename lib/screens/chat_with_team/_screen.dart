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

class DashChatWithFriendsPage extends StatefulWidget {
  final String appId; // Sendbird application id
  final String userId; // Unique user id for the buyer
  final List<String> otherUserIds; // Unique user id for the seller(s)

  DashChatWithFriendsPage(
      {required this.appId,
      required this.userId,
      required this.otherUserIds,
      Key? key})
      : super(key: key);

  @override
  _DashChatWithFriendsState createState() => _DashChatWithFriendsState();
}

class _DashChatWithFriendsState extends State<DashChatWithFriendsPage>
    with ChannelEventHandler {
  final DashChatWithFriendsController controller =
      DashChatWithFriendsController.to;
  late GroupChannel _channel;
  List<BaseMessage> _messages = [];
  // ignore: unused_field
  XFile? _image; //TODO: ImagePicker로 가져온 결과물을 담아서 보낸다.
  final ImagePicker picker = ImagePicker();
  void loadSendbird(
      String appId, String userId, List<String> otherUserIds) async {
    try {
      // Init & connect with Sendbird
      await connectWithSendbird(appId, userId);

      // Get the GroupChannel between the specified users
      final channel = await getChannelBetween(userId, otherUserIds);

      // Retrieve any existing messages from the GroupChannel
      final messages = await channel.getMessagesByTimestamp(
          DateTime.now().millisecondsSinceEpoch * 1000, MessageListParams());

      // Update & prompt the UI to rebuild
      setState(() {
        _channel = channel;
        _messages = messages;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path); //가져온 이미지를 _image에 저장
      });
    }
  }

  ChatUser asDashChatUser(User? user) {
    // If no Sendbird user, return an empty ChatUser object
    if (user == null) {
      return ChatUser(id: "", lastName: "", firstName: "", profileImage: "");
    }
    TeamAccountModel model = Get.find<IdPwLoginController>()
        .members
        .firstWhere((it) => user.userId == it.accountId);
    // print('model : $model');
    // print(
    //     'userId : ${user.userId} user.nickname : ${user.nickname} user.profileUrl : ${user.profileUrl}');
    return ChatUser(
        id: model.accountId as String,
        lastName: '',
        firstName: model.nickname,
        profileImage: model.profilePicture ?? "");
  }

  List<ChatMessage> asDashChatMessages(List<BaseMessage> messages) {
    List<ChatMessage> chatMessages = messages
        .map((sendBirdMessage) => ChatMessage(
            text: sendBirdMessage.message,
            user: asDashChatUser(sendBirdMessage.sender),
            createdAt:
                DateTime.fromMillisecondsSinceEpoch(sendBirdMessage.createdAt)))
        .toList();
    chatMessages.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return chatMessages;
  }

  @override
  void initState() {
    super.initState();
    loadSendbird(widget.appId, widget.userId, widget.otherUserIds);
    SendbirdSdk().addChannelEventHandler("dashchat", this);
  }

  @override
  void dispose() {
    super.dispose();
    SendbirdSdk().removeChannelEventHandler("dashchat");
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) {
    super.onMessageReceived(channel, message);
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                centerTitle: true,
                title: CustomImageView(
                    height: getVerticalSize(17),
                    width: getHorizontalSize(88),
                    svgPath: Assets.svg.imgFriendsTypo.path),
                styleType: Style.bgOutline),
            body: DashChat(
                currentUser: asDashChatUser(SendbirdSdk().currentUser),
                messages: asDashChatMessages(_messages),
                onSend: (newMessage) async {
                  final sentMessage =
                      _channel.sendUserMessageWithText(newMessage.text);
                  setState(() {
                    _messages.insert(0, sentMessage);
                  });
                },
                messageOptions: MessageOptions(
                    messageDecorationBuilder:
                        (message, previousMessage, nextMessage) =>
                            BoxDecoration(
                                color: message.user.id ==
                                        Get.find<IdPwLoginController>()
                                            .currentUser
                                            .value
                                            .id
                                    ? Color.fromRGBO(255, 225, 66, 1)
                                    : Color.fromRGBO(164, 168, 175, 0.2),
                                borderRadius: BorderRadius.circular(15)),
                    // borderRadius: 18.0,
                    textColor: Color.fromRGBO(34, 34, 34, 1),
                    containerColor: Color.fromRGBO(164, 168, 175, 0.2),
                    currentUserTextColor: Color.fromRGBO(34, 34, 34, 1),
                    currentUserContainerColor: Color.fromRGBO(255, 225, 66, 1),
                    timeFontSize: 12,
                    // 너무 구려서 안쓰는게 나을듯...
                    // userNameBuilder: (user) => Text(user.firstName as String)
                    showTime: false,
                    showOtherUsersName: true),
                inputOptions: InputOptions(
                    sendOnEnter: true,
                    alwaysShowSend: true,
                    // maxInputLength: 500,
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
                            // TODO 추가 구현 필요.
                            await getImage(ImageSource.gallery);
                          })
                    ],
                    cursorStyle: CursorStyle(color: Colors.black),
                    // 바깥 부분...
                    // inputToolbarStyle: BoxDecoration(
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    //   color: Colors.red,
                    // ),
                    inputDecoration: InputDecoration(
                        // leading 을 추가함으로써 필요없어짐.
                        // icon: Icon(Icons.camera_alt),
                        // iconColor: Colors.black,
                        fillColor: Color.fromRGBO(164, 168, 175, 0.2),
                        filled: true,
                        hintText: '채팅을 입력해주세요😃',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(145, 150, 157, 1),
                            fontSize: 15),
                        // helperText: 'Helper Text',
                        // counterText: '0 characters',
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
