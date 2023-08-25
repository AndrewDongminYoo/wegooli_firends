// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/data.dart';

GlobalDataController _global = GlobalDataController();

class GlobalDataController extends GetxController {
  var account = Account().obs;
  var serviceDetail = ServiceDetail().obs;
  var teamAccountModel = TeamAccountModel().obs;
  var teamCarConnection = TeamCarConnection().obs;
  var userDetailInfo = UserDetailsDTO().obs;
  var accountAgreementModelList = RxList<AccountAgreementModel>();
  var carControlHistoryModelList = RxList<CarControlHistoryModel>();
  var carHistoryDtoList = RxList<CarHistoryDTO>();
  var licenseModelList = RxList<LicenseModel>();
  var paymentCardModelList = RxList<PaymentCardModel>();
  var scheduleModelList = RxList<ScheduleModel>();
  var shareServiceModelList = RxList<ShareServiceModel>();
  var teamAccountConnectionModelList = RxList<TeamAccountConnectionModel>();
  var teamModelList = RxList<TeamModel>();
  var terminalModelList = RxList<TerminalModel>();
  var testModelList = RxList<TestModel>();

  static GlobalDataController global() {
    return _global;
  }
}
