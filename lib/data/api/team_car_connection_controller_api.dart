// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/deserialize.dart';
import '/data/model/team_car_connection.dart';

class TeamCarConnectionControllerApi {
  const TeamCarConnectionControllerApi(this._dio);
  final Dio _dio;

  /// teamCarConnection
  ///
  /// Parameters:
  ///   [teamCarConnection]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> teamCarConnection({
    required TeamCarConnection teamCarConnection,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/team/car/teamCarConnection';
    final _options = Options(
      method: 'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(teamCarConnection);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<String, String>(rawData, 'String');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// teamCarDisConnection
  ///
  /// Parameters:
  ///   [teamCarConnection]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> teamCarDisConnection({
    required TeamCarConnection teamCarConnection,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/team/car/teamCarDisConnection';
    final _options = Options(
      method: 'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(teamCarConnection);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<String, String>(rawData, 'String');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
