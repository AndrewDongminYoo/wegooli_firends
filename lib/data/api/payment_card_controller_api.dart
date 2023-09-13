// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/deserialize.dart';
import '/data/model/payment_card_model.dart';
import '/data/model/payment_card_request.dart';

class PaymentCardControllerApi {
  const PaymentCardControllerApi(this._dio);
  final Dio _dio;

  /// deletePaymentCard
  ///
  /// Parameters:
  ///   [seq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
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
        '/payment/card/{seq}'.replaceAll('{' 'seq' '}', seq.toString());
    final _options = Options(
      method: 'DELETE',
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

    final _response = await _dio.request<Object>(
      _path,
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

  /// insertPaymentCard
  ///
  /// Parameters:
  ///   [paymentCardRequest]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> insertPaymentCard({
    required PaymentCardRequest paymentCardRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/payment/card';
    final _options = Options(
      method: 'POST',
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
      _bodyData = jsonEncode(paymentCardRequest);
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

  /// selectPaymentCard
  ///
  /// Parameters:
  ///   [seq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [PaymentCardModel] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
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
        '/payment/card/{seq}'.replaceAll('{' 'seq' '}', seq.toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaymentCardModel? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<PaymentCardModel, PaymentCardModel>(
              rawData, 'PaymentCardModel');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaymentCardModel>(
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

  /// selectPaymentCardList
  ///
  /// Parameters:
  ///   [memberSeq]
  ///   [cardNumber]
  ///   [defaultYn]
  ///   [delYn]
  ///   [startCreatedAt]
  ///   [endCreatedAt]
  ///   [startUpdatedAt]
  ///   [endUpdatedAt]
  ///   [password]
  ///   [rrn]
  ///   [crn]
  ///   [expirationMonth]
  ///   [expirationYear]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// Returns a [Future] containing a [Response] with a [List<PaymentCardModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<PaymentCardModel>>> selectPaymentCardList({
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
    String? expirationMonth,
    String? expirationYear,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/payment/card';
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
      if (memberSeq != null) 'memberSeq': memberSeq,
      if (cardNumber != null) 'cardNumber': cardNumber,
      if (defaultYn != null) 'defaultYn': defaultYn,
      if (delYn != null) 'delYn': delYn,
      if (startCreatedAt != null) 'startCreatedAt': startCreatedAt,
      if (endCreatedAt != null) 'endCreatedAt': endCreatedAt,
      if (startUpdatedAt != null) 'startUpdatedAt': startUpdatedAt,
      if (endUpdatedAt != null) 'endUpdatedAt': endUpdatedAt,
      if (password != null) 'password': password,
      if (rrn != null) 'rrn': rrn,
      if (crn != null) 'crn': crn,
      if (expirationMonth != null) 'expirationMonth': expirationMonth,
      if (expirationYear != null) 'expirationYear': expirationYear,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<PaymentCardModel>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<PaymentCardModel>, PaymentCardModel>(
              rawData, 'List<PaymentCardModel>');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<PaymentCardModel>>(
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

  /// updatePaymentCard
  ///
  /// Parameters:
  ///   [paymentCardRequest]
  ///   [seq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> updatePaymentCard({
    required PaymentCardRequest paymentCardRequest,
    required int seq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        '/payment/card/{seq}'.replaceAll('{' 'seq' '}', seq.toString());
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
      _bodyData = jsonEncode(paymentCardRequest);
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
