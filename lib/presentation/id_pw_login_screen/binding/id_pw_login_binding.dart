import '../controller/id_pw_login_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IdPwLoginScreen.
///
/// This class ensures that the IdPwLoginController is created when the
/// IdPwLoginScreen is first loaded.
class IdPwLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdPwLoginController());
  }
}
