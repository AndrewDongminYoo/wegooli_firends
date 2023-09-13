// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/deserialize.dart';
import '/data/model/account_agreement_model.dart';
import '/data/model/account_agreement_request.dart';

class AccountAgreementControllerApi {
  const AccountAgreementControllerApi(this._dio);
  final Dio _dio;

  /// deleteAccountAgreement
  ///
  /// Parameters:
  ///   [classification]
  ///   [accountId]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
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
    final _path = '/account/agreement/{classification}/{accountId}'
        .replaceAll('{' 'classification' '}', classification)
        .replaceAll('{' 'accountId' '}', accountId);
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

  /// insertAccountAgreement
  ///
  /// Parameters:
  ///   [accountAgreementRequest]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> insertAccountAgreement({
    required AccountAgreementRequest accountAgreementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/account/agreement';
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
      _bodyData = jsonEncode(accountAgreementRequest);
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

  /// insertAccountAgreementList
  ///
  /// Parameters:
  ///   [accountAgreementRequest]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> insertAccountAgreementList({
    required List<AccountAgreementRequest> accountAgreementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/account/agreement/insertList';
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
      _bodyData = jsonEncode(accountAgreementRequest);
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

  /// selectAccountAgreement
  ///
  /// Parameters:
  ///   [classification]
  ///   [accountId]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [AccountAgreementModel] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
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
    final _path = '/account/agreement/{classification}/{accountId}'
        .replaceAll('{' 'classification' '}', classification)
        .replaceAll('{' 'accountId' '}', accountId);
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

    AccountAgreementModel? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<AccountAgreementModel, AccountAgreementModel>(
              rawData, 'AccountAgreementModel');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountAgreementModel>(
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

  /// selectAccountAgreementList
  ///
  /// Parameters:
  ///   [classification]
  ///   [accountId]
  ///   [agreeYn]
  ///   [startCreatedAt]
  ///   [endCreatedAt]
  ///   [startUpdatedAt]
  ///   [endUpdatedAt]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// Returns a [Future] containing a [Response] with a [List<AccountAgreementModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<AccountAgreementModel>>> selectAccountAgreementList({
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
    const _path = '/account/agreement';
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
      if (classification != null) 'classification': classification,
      if (accountId != null) 'accountId': accountId,
      if (agreeYn != null) 'agreeYn': agreeYn,
      if (startCreatedAt != null) 'startCreatedAt': startCreatedAt,
      if (endCreatedAt != null) 'endCreatedAt': endCreatedAt,
      if (startUpdatedAt != null) 'startUpdatedAt': startUpdatedAt,
      if (endUpdatedAt != null) 'endUpdatedAt': endUpdatedAt,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<AccountAgreementModel>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<AccountAgreementModel>, AccountAgreementModel>(
              rawData, 'List<AccountAgreementModel>');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<AccountAgreementModel>>(
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

  /// updateAccountAgreement
  ///
  /// Parameters:
  ///   [accountAgreementRequest]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> updateAccountAgreement({
    required AccountAgreementRequest accountAgreementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/account/agreement';
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
      _bodyData = jsonEncode(accountAgreementRequest);
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
