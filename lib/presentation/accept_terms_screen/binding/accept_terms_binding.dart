import '../controller/accept_terms_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AcceptTermsScreen.
///
/// This class ensures that the AcceptTermsController is created when the
/// AcceptTermsScreen is first loaded.
class AcceptTermsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceptTermsController());
  }
}
