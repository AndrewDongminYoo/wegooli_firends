// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AccountAgreementController extends GetxController {
  final wegooli = WegooliFriends.client;
  static AccountAgreementController get to =>
      Get.isRegistered<AccountAgreementController>()
          ? Get.find<AccountAgreementController>()
          : Get.put(AccountAgreementController());

  Rx<Account> _userAgreement = Account().obs;
  Rx<Account> get userAgreement => _userAgreement;
  set userAgreement(Rx<Account> value) {
    _userAgreement = value;
  }

  RxList<AccountAgreementModel> _accountAgreement =
      RxList<AccountAgreementModel>();
  RxList<AccountAgreementModel> get accountAgreement => _accountAgreement;
  set accountAgreement(RxList<AccountAgreementModel> value) {
    _accountAgreement = value;
  }

  RxBool isAcceptedTerm0 = false.obs;
  RxBool isAcceptedTerm1 = false.obs;
  RxBool isAcceptedTerm2 = false.obs;
  RxBool isAcceptedTerm3 = false.obs;
  RxBool isAcceptedTerm4 = false.obs;
  RxBool isAcceptedTerm5 = false.obs;
  RxBool isAcceptedTerm6 = false.obs;

  RxBool get isAllTermsAccepted {
    return (isAcceptedTerm0.value &&
            isAcceptedTerm1.value &&
            isAcceptedTerm2.value &&
            isAcceptedTerm3.value &&
            isAcceptedTerm4.value &&
            isAcceptedTerm5.value &&
            isAcceptedTerm6.value)
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
