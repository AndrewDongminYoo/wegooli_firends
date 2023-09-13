// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/deserialize.dart';
import '/data/model/test_model.dart';

class TestControllerApi {
  const TestControllerApi(this._dio);
  final Dio _dio;

  /// callTest
  ///
  /// Parameters:
  ///   [model]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [Object] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<Object>> callTest({
    required TestModel model,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/test/test';
    final _options = Options(
      method: 'GET',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      'model': model,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Object? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<Object, Object>(rawData, 'Object');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Object>(
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
