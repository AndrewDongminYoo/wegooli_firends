import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/models/accept_terms_model.dart';

/// A controller class for the AcceptTermsScreen.
///
/// This class manages the state of the AcceptTermsScreen, including the
/// current acceptTermsModelObj
class AcceptTermsController extends GetxController {
  Rx<AcceptTermsModel> acceptTermsModelObj = AcceptTermsModel().obs;

  Rx<bool> totalAgreement = false.obs;

  Rx<bool> serviceAgreemen = false.obs;

  Rx<bool> privacyPolicy = false.obs;

  Rx<bool> rentalAgreement = false.obs;

  Rx<bool> locationAgreeme = false.obs;

  Rx<bool> bookmarktwo = false.obs;

  Rx<bool> bookmarkthree = false.obs;
}
