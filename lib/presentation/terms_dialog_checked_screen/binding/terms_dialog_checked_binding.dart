import '../controller/terms_dialog_checked_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsDialogCheckedScreen.
///
/// This class ensures that the TermsDialogCheckedController is created when the
/// TermsDialogCheckedScreen is first loaded.
class TermsDialogCheckedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsDialogCheckedController());
  }
}
