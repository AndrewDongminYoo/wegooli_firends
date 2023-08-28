// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/api_util.dart';
import '/data/models/test_model.dart';

class TestControllerApi {
  final Dio _dio;

  final Serializers _serializers;

  const TestControllerApi(this._dio, this._serializers);

  /// callTest
  ///
  /// Parameters:
  /// * [model]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JsonObject] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JsonObject>> callTest({
    required TestModel model,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/test/test';
    final _options = Options(
        method: r'GET',
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
        validateStatus: validateStatus);

    final _queryParameters = <String, dynamic>{
      r'model':
          encodeQueryParameter(_serializers, model, const FullType(TestModel)),
    };

    final _response = await _dio.request<Object>(_path,
        options: _options,
        queryParameters: _queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    JsonObject? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
              specifiedType: const FullType(JsonObject)) as JsonObject;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<JsonObject>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }
}
