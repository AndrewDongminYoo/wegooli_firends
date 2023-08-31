// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AccountAgreementController extends GetxController {
  static AccountAgreementController get to =>
      Get.isRegistered<AccountAgreementController>()
          ? Get.find<AccountAgreementController>()
          : Get.put(AccountAgreementController());
  Rx<Account> agreementModel = Account().obs;
  RxList<AccountAgreementModel> accountAgreementModelList =
      RxList<AccountAgreementModel>();
  RxList<AccountAgreementRequest> accountAgreementRequestList =
      RxList<AccountAgreementRequest>();

  RxBool isAcceptedTerm0 = false.obs;
  RxBool isAcceptedTerm1 = false.obs;
  RxBool isAcceptedTerm2 = false.obs;
  RxBool isAcceptedTerm3 = false.obs;
  RxBool isAcceptedTerm4 = false.obs;
  RxBool isAcceptedTerm5 = false.obs;
  RxBool isAcceptedTerm6 = false.obs;

  RxBool get isAllTermsAccepted {
    return (isAcceptedTerm0.isTrue &&
            isAcceptedTerm1.isTrue &&
            isAcceptedTerm2.isTrue &&
            isAcceptedTerm3.isTrue &&
            isAcceptedTerm4.isTrue &&
            isAcceptedTerm5.isTrue &&
            isAcceptedTerm6.isTrue)
        .obs;
  }

  set isAllTermsAccepted(RxBool e) {
    isAcceptedTerm0 = e;
    isAcceptedTerm1 = e;
    isAcceptedTerm2 = e;
    isAcceptedTerm3 = e;
    isAcceptedTerm4 = e;
    isAcceptedTerm5 = e;
    isAcceptedTerm6 = e;
  }
}
