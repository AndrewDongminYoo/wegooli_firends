// 📦 Package imports:
import 'package:wegooli_friends/ackage:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for CarControllerApi
void main() {
  final instance = WegooliFriends().getCarControllerApi();

  group(CarControllerApi, () {
    //Future deleteCar(String carNum) async
    test('test deleteCar', () async {
      // TODO
    });

    //Future registCar(CarRequest carRequest) async
    test('test registCar', () async {
      // TODO
    });

    //Future<CarModel> selectCar(String carNum) async
    test('test selectCar', () async {
      // TODO
    });

    //Future<BuiltList<CarModel>> selectCarList(CarRequest request) async
    test('test selectCarList', () async {
      // TODO
    });

    //Future updateCar(String carNum, CarRequest carRequest) async
    test('test updateCar', () async {
      // TODO
    });
  });
}
