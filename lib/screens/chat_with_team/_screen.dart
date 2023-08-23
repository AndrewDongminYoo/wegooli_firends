// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';
import 'models/_model.dart';

class DashChatWithFriendsPage extends StatefulWidget {
  final String appId; // Sendbird application id
  final String userId; // Unique user id for the buyer
  final List<String> otherUserIds; // Unique user id for the seller(s)

  DashChatWithFriendsPage(
      {required this.appId,
      required this.userId,
      required this.otherUserIds,
      Key? key})
      : super(
          key: key,
        );

  @override
  _DashChatWithFriendsState createState() => _DashChatWithFriendsState();
}

class _DashChatWithFriendsState extends State<DashChatWithFriendsPage>
    with ChannelEventHandler {
  final DashChatWithFriendsController controller =
      Get.put(DashChatWithFriendsController(DashChatWithFriendsModel().obs));
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
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(
            45,
          ),
          centerTitle: true,
          title: AppbarImage(
            height: getVerticalSize(
              17,
            ),
            width: getHorizontalSize(
              88,
            ),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: DashChat(
          currentUser: asDashChatUser(SendbirdSdk().currentUser),
          messages: asDashChatMessages(_messages),
          onSend: (newMessage) async {
            final sentMessage =
                _channel.sendUserMessageWithText(newMessage.text);
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
      ),
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
