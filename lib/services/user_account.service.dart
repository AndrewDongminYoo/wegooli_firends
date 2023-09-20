// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserAccountService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.userApi;
  final api2 = wegooli.accountAgreementApi;

  Future<User?> login(String username, String password) async {
    try {
      print('user.username: $username\nuser.password: $password');
      final response = await api.login(id: username, password: password);
      // print('response : $response');
      final result = response.data?.result;
      var bearerToken = '';
      var token = '';
      if (result == null || result.token == null) {
        print('`login()` 반환값: $result, ${response.data?.resultCode}');
        Get.showSnackbar(const GetSnackBar(
          title: '로그인',
          message: '결과 값의 토큰 데이터에 오류가 발생했습니다.',
          duration: Duration(seconds: 1),
        ));
      } else {
        bearerToken = result.token!;
        // BEARER prefix 분리.
        token = bearerToken.split(' ').last;
      }
      print('token: $token');
      // BEARER prefix 제거
      final payload = JwtDecoder.decode(token);
      //'{"name": "My Awesome App", "iat": 1548094400}'
      print('payload: $payload');
      if (!JwtDecoder.isExpired(token)) {
        print('✅ 유효한 토큰입니다.');
        await PrefUtils.setToken(token);
        return User.fromJson(payload);
      } else {
        print('❌ 만료된 토큰입니다.');
      }
    } on Exception catch (e) {
      printDioException('login', e);
    }
    print('로그인 함수 null 반환');
    return null;
  }

  Future<void> logOut() async {
    final response = await api.logOut();
    print('response: $response');
    print('response.data: ${response.data}');
  }

  Future<bool> signOut(String accountId) async {
    final response = await api.signOut(id: accountId);
    print('response: $response');
    return response.data!;
  }

  Future<String> sendAcceptanceRequest(
      List<AccountAgreementRequest> request) async {
    final response =
        await api2.insertAccountAgreementList(accountAgreementRequest: request);
    print('response: $response');
    return response.data!;
  }

  List<String> placeholders = [
    Assets.images.placeholder01.path,
    Assets.images.placeholder02.path,
    Assets.images.placeholder03.path,
    Assets.images.placeholder04.path,
  ];
  Future<User?> signUp(UserDto userDto) async {
    try {
      final response = await api.signup(userDto: userDto);
      // print('response : $response');
      final bearerToken = response.data;
      var token = '';
      if (bearerToken == null) {
        Get.showSnackbar(const GetSnackBar(
          title: '회원가입',
          message: '결과 값의 토큰 데이터에 오류가 발생했습니다.',
          duration: Duration(seconds: 1),
        ));
      } else {
        // BEARER prefix 분리.
        token = bearerToken.split(' ').last;
      }
      print('token: $token');
      // BEARER prefix 제거
      final payload = JwtDecoder.decode(token);
      //'{"name": "My Awesome App", "iat": 1548094400}'
      print('payload: $payload');
      if (!JwtDecoder.isExpired(token)) {
        print('✅ 유효한 토큰입니다.');
        await PrefUtils.setToken(token);
        return User.fromJson(payload);
      } else {
        print('❌ 만료된 토큰입니다.');
      }
    } on Exception catch (e) {
      print('`signUp()` 호출 중 Exception 발생: $e\n');
    }
    print('회원가입 함수 null 반환');
    return null;
  }
}
