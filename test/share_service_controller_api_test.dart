// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for ShareServiceControllerApi
void main() {
  final api = WegooliFriends().getShareServiceControllerApi();

  group(ShareServiceControllerApi, () {
    //Future<List<ShareServiceModel>> getShareService(ShareServiceRequest request) async
    test('test getShareService', () async {
      // TODO
    });

    //Future<ServiceDetail> getShareServiceDetail(ServiceCarDetailRequest request) async
    test('test getShareServiceDetail', () async {
      // TODO
    });

    //Future<String> setServiceLeader(LeaderSetRequest request) async
    test('test setServiceLeader', () async {
      // TODO
    });
  });
}
