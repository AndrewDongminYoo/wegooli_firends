// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for UserControllerApi
void main() {
  final api = wegooli.userApi;

  group(UserControllerApi, () {
    //Future<String> checkId(String id) async
    test('test checkId', () async {
      // TODO
    });

    // 토큰 발급
    //
    // 사용자 정보 기반 JWT를 발급함
    //
    //Future<ApiResponseObject> generateToken(UserDetailsDto userDetailsDto) async
    test('test generateToken', () async {
      // TODO
    });

    //Future<String> getUserDetail(Account account) async
    test('test getUserDetail', () async {
      // TODO
    });

    //Future<String> logOut() async
    test('test logOut', () async {
      // TODO
    });

    //Future<String> login(String id, String password) async
    test('test login', () async {
      // TODO
    });

    //Future<String> signout(String id) async
    test('test signout', () async {
      // TODO
    });

    //Future<String> signup(UserDto userDto) async
    test('test signup', () async {
      // TODO
    });
  });
}
