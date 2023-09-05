import 'package:test/test.dart';
import 'package:wegooli_friends/wegooli_friends.dart';


/// tests for SubscriptionControllerApi
void main() {
  final instance = WegooliFriends().getSubscriptionControllerApi();

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
