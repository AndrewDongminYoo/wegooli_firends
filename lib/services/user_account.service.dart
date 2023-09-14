// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dio/dio.dart';
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
        await Get.dialog(Center(
            child: Assets.lotties.xInCircle.lottie(height: 250, width: 250)));
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
    } on DioException catch (e) {
      printDioException(e);
      print('`login()` 호출 중 DioException 발생: $e\n');
    } on Exception catch (e) {
      print('`login()` 호출 중 Exception 발생: $e\n');
    }
    print('로그인 함수 null 반환');
    return null;
  }

  void printDioException(DioException e) {
    final message = switch (e.type) {
      DioExceptionType.connectionError => e.message ?? '연결 오류가 발생했습니다.',
      DioExceptionType.connectionTimeout =>
        e.message ?? '요청 연결이 5000ms보다 오래 걸렸습니다.',
      DioExceptionType.sendTimeout =>
        e.message ?? '요청이 데이터를 전송하는 데 timeout 보다 오래 걸렸습니다.',
      DioExceptionType.receiveTimeout =>
        e.message ?? '데이터를 받는 데 3000ms 보다 오래 걸렸습니다.',
      DioExceptionType.badCertificate => e.message ?? '요청에 잘못된 인가 코드를 사용했습니다.',
      DioExceptionType.badResponse => e.message ?? '요청에서 잘못된 상태 코드를 반환했습니다.',
      DioExceptionType.cancel => e.message ?? '요청이 취소되었습니다.',
      DioExceptionType.unknown =>
        'message: ${e.message}\nerror: ${e.error}\nresponseData: ${e.response?.data}',
    };
    print(message);
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
}
