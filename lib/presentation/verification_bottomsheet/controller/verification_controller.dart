import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/verification_bottomsheet/models/verification_model.dart';

/// A controller class for the VerificationBottomsheet.
///
/// This class manages the state of the VerificationBottomsheet, including the
/// current verificationModelObj
class VerificationController extends GetxController {
  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;

  Rx<bool> totalAgreement = false.obs;

  Rx<bool> tf = false.obs;

  Rx<bool> tf1 = false.obs;

  Rx<bool> tf2 = false.obs;

  Rx<bool> tf3 = false.obs;

  Rx<bool> tf4 = false.obs;

  Rx<bool> tf5 = false.obs;
}
