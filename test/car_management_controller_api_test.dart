// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for CarManagementControllerApi
void main() {
  final instance = WegooliFriends().getCarManagementControllerApi();

  group(CarManagementControllerApi, () {
    //Future<bool> deleteCarManagement(int seq) async
    test('test deleteCarManagement', () async {
      // TODO
    });

    //Future<int> insertCarManagement(CarManagementModel carManagementModel) async
    test('test insertCarManagement', () async {
      // TODO
    });

    //Future<CarManagementModel> selectCarManagement(int seq) async
    test('test selectCarManagement', () async {
      // TODO
    });

    //Future<List<CarManagementModel>> selectCarManagementList(CarManagementModel request) async
    test('test selectCarManagementList', () async {
      // TODO
    });

    //Future<int> updateCarManagement(CarManagementModel carManagementModel, int seq) async
    test('test updateCarManagement', () async {
      // TODO
    });

  });
}
