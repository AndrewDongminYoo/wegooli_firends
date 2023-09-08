// 📦 Package imports:
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ConnectionController extends GetxController with ChannelEventHandler {
  final wegooli = WegooliFriends.client;
  static ConnectionController get to => Get.isRegistered<ConnectionController>()
      ? Get.find<ConnectionController>()
      : Get.put(ConnectionController());

  final String appId =
      '36FB6EA9-27A7-44F1-9696-72E1E21033B6'; // Sendbird application id
  RxList<BaseMessage> _messages = RxList<BaseMessage>();
  GroupChannel? channel;

  // ignore: unused_field
  XFile? image; //TODO: ImagePicker로 가져온 결과물을 담아서 보낸다.
  final ImagePicker picker = ImagePicker();

  @override
  void onInit() {
    SendbirdSdk().addChannelEventHandler("dashchat", this);
    final userController = UserController.to;
    String? userId = userController.currentUser.value.id;
    if (userId != null) {
      List<String> otherUserIds = userController.members
          .where((member) => member.accountId! != userId)
          .map((member) => member.accountId!)
          .toList();
      loadSendbird(appId, userId, otherUserIds);
    }
    super.onInit();
  }

  @override
  void onClose() {
    SendbirdSdk().removeChannelEventHandler("dashchat");
    super.onClose;
  }

  void loadSendbird(
      String appId, String userId, List<String> otherUserIds) async {
    try {
      // Init & connect with Sendbird
      await connectWithSendbird(appId, userId);
      // Get the GroupChannel between the specified users
      channel = await getChannelBetween(userId, otherUserIds);
      // Retrieve any existing messages from the GroupChannel
      MessageListParams messageListParams = new MessageListParams();
      messageListParams.previousResultSize = 100;
      messageListParams.reverse = true;
      messageListParams.messageType = MessageTypeFilter.all;
      messageListParams.isInclusive = true;
      messageListParams.includeReactions = true;
      _messages.value = await channel!.getMessagesByTimestamp(
          DateTime.now().millisecondsSinceEpoch * 1000, messageListParams);
    } catch (e) {
      print('ConnectionController.loadSendBird()-> $e');
    }
  }

  // TODO 추가 구현 필요.
  Future<void> getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      image = XFile(pickedFile.path); //가져온 이미지를 image에 저장
    }
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) {
    _messages.insert(0, message);
  }

  ChatUser asDashChatUser(User? user) {
    // If no Sendbird user, return an empty ChatUser object
    if (user == null) {
      return ChatUser(id: "", lastName: "", firstName: "", profileImage: "");
    } else {
      return ChatUser(
        id: user.userId,
        lastName: '',
        firstName: user.nickname,
        profileImage: user.profileUrl ?? "",
      );
    }
  }

  List<ChatMessage> asDashChatMessages() {
    final messages = _messages
        .map((sendBirdMessage) => ChatMessage(
            text: sendBirdMessage.message,
            user: asDashChatUser(sendBirdMessage.sender),
            createdAt:
                DateTime.fromMillisecondsSinceEpoch(sendBirdMessage.createdAt)))
        .toList();
    // messages.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return messages;
  }

  void onSendChatMessage(ChatMessage newMessage) {
    final sentMessage = channel!.sendUserMessageWithText(newMessage.text);
    return _messages.insert(0, sentMessage);
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
      rethrow;
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
      rethrow;
    }
  }
}
