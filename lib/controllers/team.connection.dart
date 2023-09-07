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

  RxString phoneNumber = ''.obs;
  Rx<Account> account = Account().obs;
  Rx<UserDetailsDTO> userDetailInfo = UserDetailsDTO().obs;

  final RxString appId = ''.obs; // Sendbird application id
  final RxString userId = ''.obs; // Unique user id for the buyer
  final RxList<String> otherUserIds =
      RxList<String>(); // Unique user id for the seller(s)
  RxList<BaseMessage> messages = RxList<BaseMessage>();
  ChatUser? _chatUser;
  List<ChatMessage> chatMessages = <ChatMessage>[];
  GroupChannel? channel;

  // ignore: unused_field
  XFile? image; //TODO: ImagePicker로 가져온 결과물을 담아서 보낸다.
  final ImagePicker picker = ImagePicker();

  @override
  void onInit() {
    SendbirdSdk().addChannelEventHandler("dashchat", this);
    loadSendbird(appId.value, userId.value, otherUserIds);
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
      messages.value = await channel!.getMessagesByTimestamp(
          DateTime.now().millisecondsSinceEpoch * 1000, MessageListParams());
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
    messages.insert(0, message);
  }

  set asChatUser(User? user) {
    // If no Sendbird user, return an empty ChatUser object
    if (user == null) {
      _chatUser =
          ChatUser(id: "", lastName: "", firstName: "", profileImage: "");
    } else {
      TeamAccountModel model = UserController.to.members
          .firstWhere((it) => user.userId == it.accountId);
      _chatUser = ChatUser(
        id: model.accountId as String,
        lastName: '',
        firstName: model.nickname,
        profileImage: model.profilePicture ?? "",
      );
    }
  }

  ChatUser get chatUser => _chatUser ?? ChatUser(id: account.value.id ?? '');

  List<ChatMessage> asDashChatMessages(List<BaseMessage> messages) {
    chatMessages = messages
        .map((sendBirdMessage) => ChatMessage(
            text: sendBirdMessage.message,
            user: chatUser,
            createdAt:
                DateTime.fromMillisecondsSinceEpoch(sendBirdMessage.createdAt)))
        .toList();
    chatMessages.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return chatMessages;
  }

  void onSendChatMessage(ChatMessage newMessage) {
    final sentMessage = channel!.sendUserMessageWithText(newMessage.text);
    return messages.insert(0, sentMessage);
  }
}
