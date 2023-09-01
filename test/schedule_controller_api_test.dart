// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for ScheduleControllerApi
void main() {
  final instance = WegooliFriends().getScheduleControllerApi();

  group(ScheduleControllerApi, () {
    //Future deleteSchedule(int seq) async
    test('test deleteSchedule', () async {
      // TODO
    });

    //Future registSchedule(ScheduleRequest scheduleRequest) async
    test('test registSchedule', () async {
      // TODO
    });

    //Future<ScheduleModel> selectSchedule(int seq) async
    test('test selectSchedule', () async {
      // TODO
    });

    //Future<BuiltList<ScheduleModel>> selectScheduleList({ int teamSeq, String accountId, String startAt, String endAt }) async
    test('test selectScheduleList', () async {
      // TODO
    });

    //Future updateSchedule(int seq, ScheduleRequest scheduleRequest) async
    test('test updateSchedule', () async {
      // TODO
    });

  });
}
