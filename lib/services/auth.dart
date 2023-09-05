// 🎯 Dart imports:
import 'dart:convert' show jsonEncode;

// 📦 Package imports:
import 'package:get/get_connect/connect.dart';

class AuthService extends GetConnect {
  final String _baseURL = 'https://api.bside.ai/onboarding';

  String _getURL(String url) => _baseURL + url;

  Future<Response<dynamic>> getUserByPhoneNumber(String phoneNumber) =>
      get(_getURL('/users?phoneNumber=$phoneNumber'));

  final String _lambdaURL =
      'https://uu6ro1ddc7.execute-api.ap-northeast-2.amazonaws.com/v1/identification';
  final String _lambdaResultURL =
      'https://uu6ro1ddc7.execute-api.ap-northeast-2.amazonaws.com/v1/mobile-identification-result';

  /// 본인인증:
  Future<Response<dynamic>> getOtpCode(
    String name,
    String regist,
    int sexCode,
    String telecomCode,
    String phoneNumber,
  ) {
    return post(
        _lambdaURL,
        jsonEncode({
          'name': name,
          'birth': regist,
          'sex': sexCode,
          'telecom': telecomCode,
          'phoneNumber': phoneNumber
        }));
  }

  Future<Response<dynamic>> putOtpCode(String phoneNumber, String otpNo) {
    return put(
        _lambdaURL, jsonEncode({'phoneNumber': phoneNumber, 'otpNo': otpNo}));
  }

  /// postPassCode는 putPassCode 호출 이후 3초 뒤에 호출 권장
  Future<Response<dynamic>> getResult(String phoneNumber) {
    return post(_lambdaResultURL, jsonEncode({'phoneNumber': phoneNumber}));
  }

  Future<Response<dynamic>> createUser(
      String name,
      String frontId,
      String backId,
      String telecom,
      String phoneNumber,
      String ci,
      String di) async {
    return post(
        _getURL('/users'),
        jsonEncode({
          'user': {
            'name': name,
            'frontId': frontId,
            'backId': backId,
            'telecom': telecom,
            'phoneNumber': phoneNumber,
            'ci': ci,
            'di': di
          },
        }));
  }

  Future<Response<dynamic>> putAddress(int uid, String address) async {
    return await put(_getURL('/users/address'),
        jsonEncode({'uid': uid, 'address': address}));
  }

  Future<Response<dynamic>> putBackId(int uid, String backId) async {
    return await put(
        _getURL('/users/backid'), jsonEncode({'uid': uid, 'backId': backId}));
  }

  Future<Response<dynamic>> putCiDi(int uid, String ci, String di) async {
    return await put(
        _getURL('/users/ci'), jsonEncode({'uid': uid, 'ci': ci, 'di': di}));
  }

  Future<Response<dynamic>> putUuid(int uid, String uuid) async {
    return await put(
        _getURL('/users/uuid'), jsonEncode({'uid': uid, 'uuid': uuid}));
  }
}
