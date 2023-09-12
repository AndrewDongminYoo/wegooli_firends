// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for NoticeControllerApi
void main() {
  final api = WegooliFriends().getNoticeControllerApi();

  group(NoticeControllerApi, () {
    //Future<int> deleteNotice(int seq) async
    test('test deleteNotice', () async {
      // TODO
    });

    //Future<int> deletePush(int seq) async
    test('test deletePush', () async {
      // TODO
    });

    //Future<int> deleteSms(int seq) async
    test('test deleteSms', () async {
      // TODO
    });

    //Future<int> insertNotice(Notice notice) async
    test('test insertNotice', () async {
      // TODO
    });

    //Future<int> insertPush(Push push) async
    test('test insertPush', () async {
      // TODO
    });

    //Future<int> insertSms(Sms sms) async
    test('test insertSms', () async {
      // TODO
    });

    //Future<Notice> selectNotice(int seq) async
    test('test selectNotice', () async {
      // TODO
    });

    //Future<List<Notice>> selectNoticeList(Notice request) async
    test('test selectNoticeList', () async {
      // TODO
    });

    //Future<Push> selectPush(int seq) async
    test('test selectPush', () async {
      // TODO
    });

    //Future<List<Push>> selectPushList(Push request) async
    test('test selectPushList', () async {
      // TODO
    });

    //Future<Sms> selectSms(int seq) async
    test('test selectSms', () async {
      // TODO
    });

    //Future<List<Sms>> selectSmsList(Sms request) async
    test('test selectSmsList', () async {
      // TODO
    });

    //Future<int> updateNotice(int seq, Notice notice) async
    test('test updateNotice', () async {
      // TODO
    });

    //Future<int> updatePush(int seq, Push push) async
    test('test updatePush', () async {
      // TODO
    });

    //Future<int> updateSms(int seq, Sms sms) async
    test('test updateSms', () async {
      // TODO
    });
  });
}
