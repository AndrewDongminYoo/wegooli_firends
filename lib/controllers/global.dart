// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

GlobalDataController _global = GlobalDataController.to;

class GlobalDataController extends GetxController {
  final wegooli = WegooliFriends.client;
  static GlobalDataController get to => Get.isRegistered<GlobalDataController>()
      ? Get.find<GlobalDataController>()
      : Get.put(GlobalDataController());

  Rx<Account> account = Account().obs;
  Rx<ServiceDetail> serviceDetail = ServiceDetail().obs;
  Rx<TeamAccountModel> teamAccountModel = TeamAccountModel().obs;
  Rx<TeamCarConnection> teamCarConnection = TeamCarConnection().obs;
  Rx<UserDetailsDTO> userDetailInfo = UserDetailsDTO().obs;
  RxList<AccountAgreementModel> accountAgreementModelList = RxList<AccountAgreementModel>();
  RxList<CarControlHistoryModel> carControlHistoryModelList = RxList<CarControlHistoryModel>();
  RxList<CarHistoryDTO> carHistoryDtoList = RxList<CarHistoryDTO>();
  RxList<LicenseModel> licenseModelList = RxList<LicenseModel>();
  RxList<PaymentCardModel> paymentCardModelList = RxList<PaymentCardModel>();
  RxList<ScheduleModel> scheduleModelList = RxList<ScheduleModel>();
  RxList<ShareServiceModel> shareServiceModelList = RxList<ShareServiceModel>();
  RxList<TeamAccountConnectionModel> teamAccountConnectionModelList = RxList<TeamAccountConnectionModel>();
  RxList<TeamModel> teamModelList = RxList<TeamModel>();
  RxList<TerminalModel> terminalModelList = RxList<TerminalModel>();
  RxList<TestModel> testModelList = RxList<TestModel>();

  static GlobalDataController global() {
    return _global;
  }
}
