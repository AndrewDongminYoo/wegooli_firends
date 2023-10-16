// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/card_list_screen/models/card_list_model.dart';

class CardListController extends GetxController {
  Rx<CardListModel> cardList = CardListModel().obs;

  Rx<String> radioGroup = ''.obs;

  Rx<String> radioGroup1 = ''.obs;
}
