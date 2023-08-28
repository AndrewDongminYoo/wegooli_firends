// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/api_util.dart';
import '/data/models/payment_card_model.dart';
import '/data/models/payment_card_request.dart';

class PaymentCardControllerApi {
  final Dio _dio;

  final Serializers _serializers;

  const PaymentCardControllerApi(this._dio, this._serializers);

  /// deletePaymentCard
  ///
  /// Parameters:
  /// * [seq]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deletePaymentCard({
    required int seq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/payment/card/{seq}'.replaceAll('{' r'seq' '}', seq.toString());
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

  /// insertPaymentCard
  ///
  /// Parameters:
  /// * [paymentCardRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> insertPaymentCard({
    required PaymentCardRequest paymentCardRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/payment/card';
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
      const _type = FullType(PaymentCardRequest);
      _bodyData =
          _serializers.serialize(paymentCardRequest, specifiedType: _type);
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

  /// selectPaymentCard
  ///
  /// Parameters:
  /// * [seq]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaymentCardModel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaymentCardModel>> selectPaymentCard({
    required int seq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/payment/card/{seq}'.replaceAll('{' r'seq' '}', seq.toString());
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

    PaymentCardModel? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType: const FullType(PaymentCardModel))
              as PaymentCardModel;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<PaymentCardModel>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// selectPaymentCardList
  ///
  /// Parameters:
  /// * [memberSeq]
  /// * [cardNumber]
  /// * [defaultYn]
  /// * [delYn]
  /// * [startCreatedAt]
  /// * [endCreatedAt]
  /// * [startUpdatedAt]
  /// * [endUpdatedAt]
  /// * [password]
  /// * [rrn]
  /// * [crn]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<PaymentCardModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<PaymentCardModel>>> selectPaymentCardList({
    int? memberSeq,
    String? cardNumber,
    String? defaultYn,
    String? delYn,
    String? startCreatedAt,
    String? endCreatedAt,
    String? startUpdatedAt,
    String? endUpdatedAt,
    String? password,
    String? rrn,
    String? crn,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/payment/card';
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
      if (memberSeq != null)
        r'memberSeq':
            encodeQueryParameter(_serializers, memberSeq, const FullType(int)),
      if (cardNumber != null)
        r'cardNumber': encodeQueryParameter(
            _serializers, cardNumber, const FullType(String)),
      if (defaultYn != null)
        r'defaultYn': encodeQueryParameter(
            _serializers, defaultYn, const FullType(String)),
      if (delYn != null)
        r'delYn':
            encodeQueryParameter(_serializers, delYn, const FullType(String)),
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
      if (password != null)
        r'password': encodeQueryParameter(
            _serializers, password, const FullType(String)),
      if (rrn != null)
        r'rrn': encodeQueryParameter(_serializers, rrn, const FullType(String)),
      if (crn != null)
        r'crn': encodeQueryParameter(_serializers, crn, const FullType(String)),
    };

    final _response = await _dio.request<Object>(_path,
        options: _options,
        queryParameters: _queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    BuiltList<PaymentCardModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType:
                      const FullType(BuiltList, [FullType(PaymentCardModel)]))
              as BuiltList<PaymentCardModel>;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<BuiltList<PaymentCardModel>>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// updatePaymentCard
  ///
  /// Parameters:
  /// * [seq]
  /// * [paymentCardRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> updatePaymentCard({
    required int seq,
    required PaymentCardRequest paymentCardRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/payment/card/{seq}'.replaceAll('{' r'seq' '}', seq.toString());
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
      const _type = FullType(PaymentCardRequest);
      _bodyData =
          _serializers.serialize(paymentCardRequest, specifiedType: _type);
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
