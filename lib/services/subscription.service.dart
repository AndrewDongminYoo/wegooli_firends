// 📦 Package imports:
import 'package:get/get_connect.dart';

// 🌎 Project imports:
import '/lib.dart';

class SubscriptionService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.subscriptionApi;

  Future<String?> submitWithdrawal(SubmitWithdrawalModel withdraw) async {
    final response =
        await api.submitWithdrawal(submitWithdrawalModel: withdraw);
    return response.data;
  }

  Future<List<SubscriptionModel>> loadSubscriptions(
      String accountId, int teamSeq) async {
    final response = await api.selectSubscriptionInfo(
        accountId: accountId, teamSeq: teamSeq);
    return response.data ?? <SubscriptionModel>[];
  }
}
