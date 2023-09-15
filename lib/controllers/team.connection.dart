// 📦 Package imports:
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

// 🌎 Project imports:
import '/core/app_export.dart' hide User;

/// [ConnectionController] 클래스는 Sendbird 채팅 서비스와의 연결 및 통신을 관리하고,
/// 이벤트와 메시지를 처리하며, 채팅 메시지를 보내고 받는 방법을 제공하는 역할을 담당 (내부 API와 연결되어 있지 않음).
class ConnectionController extends GetxController with ChannelEventHandler {
  // ignore: prefer_constructors_over_static_methods
  static ConnectionController get to => Get.isRegistered<ConnectionController>()
      ? Get.find<ConnectionController>()
      : Get.put(ConnectionController());

  final String appId = dotenv.get('SENDBIRD_APPKEY');
  final RxList<BaseMessage> _messages = RxList<BaseMessage>();
  GroupChannel? channel;

  // ignore: unused_field
  XFile? image; //TODO: ImagePicker로 가져온 결과물을 담아서 보낸다.
  final ImagePicker picker = ImagePicker();

  @override
  void onInit() {
    SendbirdSdk().addChannelEventHandler('dashchat', this);
    final userController = UserController.to;
    final userId = userController.currentUser.id;
    print('appId: $appId, userId: $userId');
    final otherMembers = userController.members
        .map((member) => member.accountId!)
        .where((id) => id != userId)
        .toList();
    print('otherMembers is $otherMembers');
    if (otherMembers.isNotEmpty) {
      loadSendbird(appId, userId!, otherMembers);
    } else {
      // TODO: 채팅할 멤버가 없는 경우 동작 수행
      // goTeamInvitation();
      // goSharedSchedule();
    }
    super.onInit();
  }

  @override
  void onClose() {
    SendbirdSdk().removeChannelEventHandler('dashchat');
  }

  Future<void> loadSendbird(
      String appId, String userId, List<String> otherUserIds) async {
    try {
      // Init & connect with Sendbird
      await connectWithSendbird(appId, userId);
      // Get the GroupChannel between the specified users
      channel = await getChannelBetween(userId, otherUserIds);
      // Retrieve any existing messages from the GroupChannel
      final messageListParams = MessageListParams()
        ..previousResultSize = 100
        ..reverse = true
        ..messageType = MessageTypeFilter.all
        ..isInclusive = true
        ..includeReactions = true;
      _messages.value = await channel!.getMessagesByTimestamp(
          DateTime.now().millisecondsSinceEpoch * 1000, messageListParams);
    } catch (e) {
      print('ConnectionController.loadSendBird()-> $e');
    }
  }

  // TODO 추가 구현 필요.
  Future<void> getImage(ImageSource imageSource) async {
    // pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      image = XFile(pickedFile.path); // 가져온 이미지를 image에 저장
    }
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) {
    _messages.insert(0, message);
  }

  ChatUser asDashChatUser(User? user) {
    // If no Sendbird user, return an empty ChatUser object
    if (user == null) {
      return ChatUser(id: '', lastName: '', firstName: '', profileImage: '');
    } else {
      return ChatUser(
        id: user.userId,
        lastName: '',
        firstName: user.nickname,
        profileImage: user.profileUrl ?? '',
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
