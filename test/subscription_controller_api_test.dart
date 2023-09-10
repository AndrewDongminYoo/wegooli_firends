// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for SubscriptionControllerApi
void main() {
  final api = WegooliFriends().getSubscriptionControllerApi();

  group(SubscriptionControllerApi, () {
    //Future<List<SubscriptionModel>> selectSubscriptionInfo(String accountId, int teamSeq) async
    test('test selectSubscriptionInfo', () async {
      // TODO
    });

    //Future<String> submitWithdrawal(SubmitWithdrawalModel submitWithdrawalModel) async
    test('test submitWithdrawal', () async {
      // TODO
    });
  });
}
