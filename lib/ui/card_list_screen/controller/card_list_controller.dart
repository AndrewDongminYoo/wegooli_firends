// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class CardListController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static CardListController get to => GetIt.I.isRegistered<CardListController>()
      ? GetIt.I.get<CardListController>()
      : GetIt.I.registerSingleton(CardListController());

  Rx<String> radioGroup = ''.obs;
  Rx<String> radioGroup1 = ''.obs;
}
