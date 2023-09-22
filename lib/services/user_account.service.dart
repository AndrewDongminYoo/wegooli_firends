// 🎯 Dart imports:
import 'dart:async';
import 'dart:math';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserAccountService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.userApi;
  final api2 = wegooli.accountAgreementApi;

  @protected
  String? _token;

  String get token {
    if (_token.isNotNullOrEmpty) {
      return _token!;
    } else {
      final _new = PrefUtils.getToken();
      if (_new.isNotNullOrEmpty) {
        if (JwtDecoder.isExpired(_new!)) {
          api.logOut();
          throw CustomException('인증이 만료된 사용자입니다. 다시 로그인해주세요.');
        }
        _token = _new;
        return _token!;
      } else {
        throw CustomException('로그인을 먼저 진행해 주세요.');
      }
    }
  }

  set token(String value) {
    if (!JwtDecoder.isExpired(value)) {
      print('✅ 유효한 토큰입니다.');
      unawaited(PrefUtils.setToken(value));
      httpClient.addRequestModifier((Request request) {
        request.headers['Authorization'] = 'Bearer $token';
        return request;
      });
    }
    _token = value;
  }

  Future<User?> login(String username, String password) async {
    try {
      print('user.username: $username\nuser.password: $password');
      final response = await api.login(id: username, password: password);
      // print('response : $response');
      final result = response.data?.result;
      var bearerToken = '';
      if (result == null || result.token == null) {
        throw CustomException('결과 값의 토큰 데이터에 오류가 발생했습니다.');
      } else {
        bearerToken = result.token!;
        // BEARER prefix 분리.
        token = bearerToken.split(' ').last;
      }
      print('token: $token');
      // BEARER prefix 제거
      final payload = JwtDecoder.decode(token);
      return User.fromJson(payload);
    } on Exception catch (e) {
      throw printDioException('login', e);
    }
  }

  Future<String> logOut() async {
    final response = await api.logOut();
    print('response: $response');
    print('response.data: ${response.data}');
    return response.data ?? 'logout failed';
  }

  Future<bool> signOut(String accountId) async {
    final response = await api.signOut(id: accountId);
    print('response: $response');
    return response.data ?? false;
  }

  Future<String> sendAcceptanceRequest(
      List<AccountAgreementRequest> request) async {
    final response =
        await api2.insertAccountAgreementList(accountAgreementRequest: request);
    print('response: $response');
    return response.data ?? 'accept terms of use failed. do it later, btw.';
  }

  List<String> placeholders = [
    Assets.images.placeholder01.path,
    Assets.images.placeholder02.path,
    Assets.images.placeholder03.path,
    Assets.images.placeholder04.path,
  ];

  Future<UserDto?> signUp(
      String realName,
      String birthDay,
      String socialId,
      String phoneNum,
      String postCode,
      String primaryAddress,
      String detailAddress,
      String emailAddress,
      String password,
      String nickname) async {
    final sex = socialId.startsWith(RegExp('[13]')) ? 'M' : 'F';
    final i = Random().nextInt(4);
    final userDto = UserDto(
      name: realName,
      add1: primaryAddress,
      add2: detailAddress,
      zipCode: postCode,
      phoneNumber: phoneNum,
      email: emailAddress,
      birthday: birthDay,
      sex: sex,
      password: password,
      delimit: 'OPERATOR',
      nickname: nickname,
      profilePicture: placeholders[i],
      color: '#121212',
      activeYn: true.toYN,
    );
    final user = await api.signup(userDto: userDto);
    return user.data;
  }
}
