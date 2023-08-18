// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

// 🌎 Project imports:
import '../utils/connect_with_sendbird.dart';
import '../utils/get_channel_between.dart';

class ChatTab extends StatefulWidget {
  static const title = '채팅';
  static const androidIcon = Icon(Icons.chat, size: 28.0);
  static const iosIcon = Icon(CupertinoIcons.text_bubble, size: 28.0);
  final String appId; // Sendbird application id
  final String userId; // Unique user id for the buyer
  final List<String> otherUserIds; // Unique user id for the seller(s)

  // Constructor
  ChatTab(
      {required this.appId, required this.userId, required this.otherUserIds});

  @override
  _ChatTapState createState() => _ChatTapState();
}

class _ChatTapState extends State<ChatTab> with ChannelEventHandler {
  late GroupChannel _channel;
  List<BaseMessage> _messages = [];

  void loadSendbird(
    String appId,
    String userId,
    List<String> otherUserIds,
  ) async {
    try {
      // Init & connect with Sendbird
      await connectWithSendbird(appId, userId);

      // Get the GroupChannel between the specified users
      final channel = await getChannelBetween(userId, otherUserIds);

      // Retrieve any existing messages from the GroupChannel
      final messages = await channel.getMessagesByTimestamp(
        DateTime.now().millisecondsSinceEpoch * 1000,
        MessageListParams(),
      );

      // Update & prompt the UI to rebuild
      setState(() {
        _channel = channel;
        _messages = messages;
      });
    } catch (e) {
      print(e);
    }
  }

  ChatUser asDashChatUser(User? user) {
    // If no Sendbird user, return an empty ChatUser object
    if (user == null) {
      return ChatUser(id: "", lastName: "", firstName: "", profileImage: "");
    }
    // Sendbird user nicknames and profileUrls are optional and may be empty
    return ChatUser(
      id: user.userId,
      lastName: '',
      firstName: user.nickname,
      profileImage: user.profileUrl ?? "",
    );
  }

  List<ChatMessage> asDashChatMessages(List<BaseMessage> messages) {
    return [
      for (BaseMessage sendBirdMessage in messages)
        ChatMessage(
          text: sendBirdMessage.message,
          user: asDashChatUser(sendBirdMessage.sender),
          createdAt: DateTime.now(),
        )
    ];
  }

  @override
  void initState() {
    super.initState();
    loadSendbird(
      widget.appId,
      widget.userId,
      widget.otherUserIds,
    );
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
      _messages.add(message);
      _messages.sort(((a, b) => b.createdAt.compareTo(a.createdAt)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ChatTab.title)),
      body: DashChat(
        currentUser: asDashChatUser(SendbirdSdk().currentUser),
        messages: asDashChatMessages(_messages),
        onSend: (newMessage) {
          final sentMessage = _channel.sendUserMessageWithText(newMessage.text);
          setState(() {
            // _messages.add(sentMessage);
            _messages.insert(0, sentMessage);
          });
        },
        inputOptions: const InputOptions(
          sendOnEnter: true,
        ),
        messageListOptions: MessageListOptions(
          onLoadEarlier: () async {
            await Future.delayed(const Duration(seconds: 3));
          },
        ),
        typingUsers: <ChatUser>[],
      ),
    );
  }
}
