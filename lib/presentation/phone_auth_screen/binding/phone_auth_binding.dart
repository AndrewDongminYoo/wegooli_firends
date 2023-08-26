import '../controller/phone_auth_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhoneAuthScreen.
///
/// This class ensures that the PhoneAuthController is created when the
/// PhoneAuthScreen is first loaded.
class PhoneAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneAuthController());
  }
}
