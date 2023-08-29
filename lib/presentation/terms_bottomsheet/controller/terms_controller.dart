import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/terms_bottomsheet/models/terms_model.dart';

/// A controller class for the TermsBottomsheet.
///
/// This class manages the state of the TermsBottomsheet, including the
/// current termsModelObj
class TermsController extends GetxController {
  Rx<TermsModel> termsModelObj = TermsModel().obs;

  Rx<bool> totalAgreement = false.obs;

  Rx<bool> tf = false.obs;

  Rx<bool> tf1 = false.obs;

  Rx<bool> tf2 = false.obs;

  Rx<bool> tf3 = false.obs;

  Rx<bool> computer = false.obs;

  Rx<bool> tf4 = false.obs;
}
