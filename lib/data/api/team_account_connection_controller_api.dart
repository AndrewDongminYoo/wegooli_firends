// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/api_util.dart';
import '/data/models/team_account_connection_model.dart';
import '/data/models/team_account_connection_request.dart';
import '/data/models/team_account_connection_response.dart';

class TeamAccountConnectionControllerApi {
  final Dio _dio;

  final Serializers _serializers;

  const TeamAccountConnectionControllerApi(this._dio, this._serializers);

  /// deleteTeamAccount
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
  Future<Response<String>> deleteTeamAccount({
    required int seq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/team/account/{seq}'.replaceAll('{' r'seq' '}', seq.toString());
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

  /// insertTeamAccount
  ///
  /// Parameters:
  /// * [teamAccountConnectionRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> insertTeamAccount({
    required TeamAccountConnectionRequest teamAccountConnectionRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/team/account';
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
      const _type = FullType(TeamAccountConnectionRequest);
      _bodyData = _serializers.serialize(teamAccountConnectionRequest,
          specifiedType: _type);
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

  /// inviteTeamAccount
  ///
  /// Parameters:
  /// * [accountId]
  /// * [code]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> inviteTeamAccount({
    required String accountId,
    required String code,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/team/account/{accountId}/{code}'
        .replaceAll('{' r'accountId' '}', accountId.toString())
        .replaceAll('{' r'code' '}', code.toString());
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

  /// selectTeamAccount
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
  /// Returns a [Future] containing a [Response] with a [TeamAccountConnectionModel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TeamAccountConnectionModel>> selectTeamAccount({
    required int seq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/team/account/{seq}'.replaceAll('{' r'seq' '}', seq.toString());
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

    TeamAccountConnectionModel? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType: const FullType(TeamAccountConnectionModel))
              as TeamAccountConnectionModel;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<TeamAccountConnectionModel>(
        data: _responseData,
        headers: _response.headers,
        isRedirect: _response.isRedirect,
        requestOptions: _response.requestOptions,
        redirects: _response.redirects,
        statusCode: _response.statusCode,
        statusMessage: _response.statusMessage,
        extra: _response.extra);
  }

  /// selectTeamAccountList
  ///
  /// Parameters:
  /// * [teamSeq]
  /// * [accountId]
  /// * [startJoinedAt]
  /// * [endJoinedAt]
  /// * [startLeavedAt]
  /// * [endLeavedAt]
  /// * [isLeaved]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TeamAccountConnectionResponse>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TeamAccountConnectionResponse>>>
      selectTeamAccountList({
    int? teamSeq,
    String? accountId,
    String? startJoinedAt,
    String? endJoinedAt,
    String? startLeavedAt,
    String? endLeavedAt,
    String? isLeaved,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/team/account';
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
      if (teamSeq != null)
        r'teamSeq':
            encodeQueryParameter(_serializers, teamSeq, const FullType(int)),
      if (accountId != null)
        r'accountId': encodeQueryParameter(
            _serializers, accountId, const FullType(String)),
      if (startJoinedAt != null)
        r'startJoinedAt': encodeQueryParameter(
            _serializers, startJoinedAt, const FullType(String)),
      if (endJoinedAt != null)
        r'endJoinedAt': encodeQueryParameter(
            _serializers, endJoinedAt, const FullType(String)),
      if (startLeavedAt != null)
        r'startLeavedAt': encodeQueryParameter(
            _serializers, startLeavedAt, const FullType(String)),
      if (endLeavedAt != null)
        r'endLeavedAt': encodeQueryParameter(
            _serializers, endLeavedAt, const FullType(String)),
      if (isLeaved != null)
        r'isLeaved': encodeQueryParameter(
            _serializers, isLeaved, const FullType(String)),
    };

    final _response = await _dio.request<Object>(_path,
        options: _options,
        queryParameters: _queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    BuiltList<TeamAccountConnectionResponse>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(rawResponse,
                  specifiedType: const FullType(
                      BuiltList, [FullType(TeamAccountConnectionResponse)]))
              as BuiltList<TeamAccountConnectionResponse>;
    } catch (error, stackTrace) {
      throw DioException(
          requestOptions: _response.requestOptions,
          response: _response,
          type: DioExceptionType.unknown,
          error: error,
          stackTrace: stackTrace);
    }

    return Response<BuiltList<TeamAccountConnectionResponse>>(
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
