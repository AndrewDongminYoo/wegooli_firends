import '../controller/terms_dialog_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsDialogScreen.
///
/// This class ensures that the TermsDialogController is created when the
/// TermsDialogScreen is first loaded.
class TermsDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsDialogController());
  }
}
