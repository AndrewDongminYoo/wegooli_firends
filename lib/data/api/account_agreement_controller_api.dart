// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/api_util.dart';
import '/data/models/account_agreement_model.dart';
import '/data/models/account_agreement_request.dart';

class AccountAgreementControllerApi {
  final Dio _dio;

  final Serializers _serializers;

  const AccountAgreementControllerApi(this._dio, this._serializers);

  /// deleteAccountAgreement
  ///
  /// Parameters:
  /// * [classification]
  /// * [accountId]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteAccountAgreement({
    required String classification,
    required String accountId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/agreement/{classification}/{accountId}'
        .replaceAll('{' r'classification' '}', classification.toString())
        .replaceAll('{' r'accountId' '}', accountId.toString());
    final _options = Options(
        method: r'DELETE',
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

    final _response = await _dio.request<Object>(_path,
        options: _options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<String>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// insertAccountAgreement
  ///
  /// Parameters:
  /// * [accountAgreementRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> insertAccountAgreement({
    required AccountAgreementRequest accountAgreementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/agreement';
    final _options = Options(
        method: r'POST',
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
        validateStatus: validateStatus);

    dynamic _bodyData;

    try {
      const _type = FullType(AccountAgreementRequest);
      _bodyData =
          _serializers.serialize(accountAgreementRequest, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _options.compose(_dio.options, _path),
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    final _response = await _dio.request<Object>(_path,
        data: _bodyData,
        options: _options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<String>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// selectAccountAgreement
  ///
  /// Parameters:
  /// * [classification]
  /// * [accountId]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountAgreementModel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountAgreementModel>> selectAccountAgreement({
    required String classification,
    required String accountId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/agreement/{classification}/{accountId}'
        .replaceAll('{' r'classification' '}', classification.toString())
        .replaceAll('{' r'accountId' '}', accountId.toString());
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

    final _response = await _dio.request<Object>(_path,
        options: _options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    AccountAgreementModel? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType: const FullType(AccountAgreementModel))
              as AccountAgreementModel;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<AccountAgreementModel>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// selectAccountAgreementList
  ///
  /// Parameters:
  /// * [classification]
  /// * [accountId]
  /// * [agreeYn]
  /// * [startCreatedAt]
  /// * [endCreatedAt]
  /// * [startUpdatedAt]
  /// * [endUpdatedAt]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AccountAgreementModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AccountAgreementModel>>>
      selectAccountAgreementList({
    String? classification,
    String? accountId,
    String? agreeYn,
    String? startCreatedAt,
    String? endCreatedAt,
    String? startUpdatedAt,
    String? endUpdatedAt,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/agreement';
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
      if (classification != null)
        r'classification': encodeQueryParameter(
            _serializers, classification, const FullType(String)),
      if (accountId != null)
        r'accountId': encodeQueryParameter(
            _serializers, accountId, const FullType(String)),
      if (agreeYn != null)
        r'agreeYn':
            encodeQueryParameter(_serializers, agreeYn, const FullType(String)),
      if (startCreatedAt != null)
        r'startCreatedAt': encodeQueryParameter(
            _serializers, startCreatedAt, const FullType(String)),
      if (endCreatedAt != null)
        r'endCreatedAt': encodeQueryParameter(
            _serializers, endCreatedAt, const FullType(String)),
      if (startUpdatedAt != null)
        r'startUpdatedAt': encodeQueryParameter(
            _serializers, startUpdatedAt, const FullType(String)),
      if (endUpdatedAt != null)
        r'endUpdatedAt': encodeQueryParameter(
            _serializers, endUpdatedAt, const FullType(String)),
    };

    final _response = await _dio.request<Object>(_path,
        options: _options,
        queryParameters: _queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    BuiltList<AccountAgreementModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType: const FullType(
                      BuiltList, [FullType(AccountAgreementModel)]))
              as BuiltList<AccountAgreementModel>;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<BuiltList<AccountAgreementModel>>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// updateAccountAgreement
  ///
  /// Parameters:
  /// * [accountAgreementRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> updateAccountAgreement({
    required AccountAgreementRequest accountAgreementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/agreement';
    final _options = Options(
        method: r'PUT',
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
        validateStatus: validateStatus);

    dynamic _bodyData;

    try {
      const _type = FullType(AccountAgreementRequest);
      _bodyData =
          _serializers.serialize(accountAgreementRequest, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _options.compose(_dio.options, _path),
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    final _response = await _dio.request<Object>(_path,
        data: _bodyData,
        options: _options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<String>(
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
