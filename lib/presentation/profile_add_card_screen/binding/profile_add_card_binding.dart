import '../controller/profile_add_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileAddCardScreen.
///
/// This class ensures that the ProfileAddCardController is created when the
/// ProfileAddCardScreen is first loaded.
class ProfileAddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileAddCardController());
  }
}
