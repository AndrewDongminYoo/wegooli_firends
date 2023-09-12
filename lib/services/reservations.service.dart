// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/lib.dart';

class ReservationsService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final scheduleApi = wegooli.scheduleApi;

  Future<List<Schedule>> retrieveSchedules(int teamSeq) async {
    final response = await scheduleApi.selectScheduleList(teamSeq: teamSeq);
    final schedules = response.data;
    if (schedules == null) {
      return List.empty();
    }
    // print('schedules $schedules');
    return schedules.map(Schedule.fromModel).toList();
  }

  Future<void> deleteSchedule(int seq) async {
    try {
      await scheduleApi.deleteSchedule(seq: seq);
      return popWithValue(Get.context!, true);
    } catch (e) {
      return popWithValue(Get.context!, false);
    }
  }

  Future<void> addSchedule(
      String accountId, int teamSeq, DateTime startAt, DateTime endAt) async {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    final scheduleRequest = ScheduleRequest(
      accountId: accountId,
      teamSeq: teamSeq,
      startAt: formatter.format(startAt),
      endAt: formatter.format(endAt),
    );
    print('scheduleRequest $scheduleRequest');
    final response =
        await scheduleApi.registSchedule(scheduleRequest: scheduleRequest);
    print('새로운 스케줄을 등록했습니다. ${response.statusCode}');
    return response.data;
  }
}
