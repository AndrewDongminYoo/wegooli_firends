// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/data.dart';

/// A controller class for the AcceptTermsScreen.
///
/// This class manages the state of the AcceptTermsScreen, including the
/// current acceptTermsModelObj
class AcceptTermsController extends GetxController {
  static AcceptTermsController get to =>
      Get.isRegistered<AcceptTermsController>()
          ? Get.find<AcceptTermsController>()
          : Get.put(AcceptTermsController());
  Rx<Account> agreementModel = Account().obs;
  RxList<AccountAgreementModel> accountAgreementModelList =
      RxList<AccountAgreementModel>();
  RxList<AccountAgreementRequest> accountAgreementRequestList =
      RxList<AccountAgreementRequest>();

  Rx<bool> isAcceptedTerm0 = false.obs;
  Rx<bool> isAcceptedTerm1 = false.obs;
  Rx<bool> isAcceptedTerm2 = false.obs;
  Rx<bool> isAcceptedTerm3 = false.obs;
  Rx<bool> isAcceptedTerm4 = false.obs;
  Rx<bool> isAcceptedTerm5 = false.obs;
  Rx<bool> isAcceptedTerm6 = false.obs;

  Rx<bool> get isAllTermsAccepted {
    return (isAcceptedTerm0.value &&
            isAcceptedTerm1.value &&
            isAcceptedTerm2.value &&
            isAcceptedTerm3.value &&
            isAcceptedTerm4.value &&
            isAcceptedTerm5.value &&
            isAcceptedTerm6.value)
        .obs;
  }
}
