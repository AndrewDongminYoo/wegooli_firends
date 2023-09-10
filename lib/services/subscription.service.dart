// 📦 Package imports:
import 'package:get/get_connect/connect.dart' show GetConnect;

// 🌎 Project imports:
import '/lib.dart';

class SubscriptionService extends GetConnect {
  @override
  String get baseUrl => WegooliFriends.basePath;
  final api = wegooli.getSubscriptionControllerApi();

  Future<String?> submitWithdrawal(SubmitWithdrawalModel withdraw) async {
    final response = await api.submitWithdrawal(submitWithdrawalModel: withdraw);
    return response.data;
  }

  Future<List<SubscriptionModel>> loadSubscriptions(String accountId, int teamSeq) async {
    final response = await api.selectSubscriptionInfo(
        accountId: accountId, teamSeq: teamSeq);
    return response.data ?? <SubscriptionModel>[];
  }
}
