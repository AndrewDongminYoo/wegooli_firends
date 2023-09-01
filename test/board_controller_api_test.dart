// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for BoardControllerApi
void main() {
  final instance = WegooliFriends().getBoardControllerApi();

  group(BoardControllerApi, () {
    //Future<bool> deleteAnswer(int seq) async
    test('test deleteAnswer', () async {
      // TODO
    });

    //Future<bool> deleteQuestion(int seq) async
    test('test deleteQuestion', () async {
      // TODO
    });

    //Future<int> insertAnswer(int seq, QnA qnA) async
    test('test insertAnswer', () async {
      // TODO
    });

    //Future<int> insertQuestion(QnA qnA) async
    test('test insertQuestion', () async {
      // TODO
    });

    //Future<int> selectCountQnA(QnA request) async
    test('test selectCountQnA', () async {
      // TODO
    });

    //Future<QnA> selectQnA(int seq) async
    test('test selectQnA', () async {
      // TODO
    });

    //Future<BuiltList<QnA>> selectQnAList(QnA request) async
    test('test selectQnAList', () async {
      // TODO
    });

    //Future<int> updateAnswer(int seq, QnA qnA) async
    test('test updateAnswer', () async {
      // TODO
    });

    //Future<int> updateQuestion(int seq, QnA qnA) async
    test('test updateQuestion', () async {
      // TODO
    });
  });
}
