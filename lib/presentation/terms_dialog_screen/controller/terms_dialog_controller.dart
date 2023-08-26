import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_screen/models/terms_dialog_model.dart';

/// A controller class for the TermsDialogScreen.
///
/// This class manages the state of the TermsDialogScreen, including the
/// current termsDialogModelObj
class TermsDialogController extends GetxController {
  Rx<TermsDialogModel> termsDialogModelObj = TermsDialogModel().obs;

  Rx<bool> totalAgreement = false.obs;

  Rx<bool> tf = false.obs;

  Rx<bool> tf1 = false.obs;

  Rx<bool> tf2 = false.obs;

  Rx<bool> tf3 = false.obs;

  Rx<bool> tf4 = false.obs;
}
