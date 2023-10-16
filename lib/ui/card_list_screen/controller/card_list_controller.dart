// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/card_list_screen/models/card_list_model.dart';

/// A controller class for the CardListScreen.
///
/// This class manages the state of the CardListScreen, including the
/// current cardListModelObj
class CardListController extends GetxController {
  Rx<CardListModel> cardListModelObj = CardListModel().obs;

  Rx<String> radioGroup = ''.obs;

  Rx<String> radioGroup1 = ''.obs;
}
