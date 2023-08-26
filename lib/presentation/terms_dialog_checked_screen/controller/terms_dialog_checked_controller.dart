import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_checked_screen/models/terms_dialog_checked_model.dart';

/// A controller class for the TermsDialogCheckedScreen.
///
/// This class manages the state of the TermsDialogCheckedScreen, including the
/// current termsDialogCheckedModelObj
class TermsDialogCheckedController extends GetxController {
  Rx<TermsDialogCheckedModel> termsDialogCheckedModelObj =
      TermsDialogCheckedModel().obs;

  Rx<bool> totalAgreement = false.obs;

  Rx<bool> computer = false.obs;
}
