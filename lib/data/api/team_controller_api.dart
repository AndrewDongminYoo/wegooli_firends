// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/deserialize.dart';
import '/data/model/team_model.dart';
import '/data/model/team_request.dart';

class TeamControllerApi {
  const TeamControllerApi(this._dio);
  final Dio _dio;

  /// deleteTeam
  ///
  /// Parameters:
  ///   [teamSeq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> deleteTeam({
    required int teamSeq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        '/team/{teamSeq}'.replaceAll('{' 'teamSeq' '}', teamSeq.toString());
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

  /// insertTeam
  ///
  /// Parameters:
  ///   [teamRequest]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [Object] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<Object>> insertTeam({
    required TeamRequest teamRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/team';
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
      _bodyData = jsonEncode(teamRequest);
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

  /// selectTeam
  ///
  /// Parameters:
  ///   [teamSeq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [TeamModel] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<TeamModel>> selectTeam({
    required int teamSeq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        '/team/{teamSeq}'.replaceAll('{' 'teamSeq' '}', teamSeq.toString());
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

    TeamModel? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<TeamModel, TeamModel>(rawData, 'TeamModel');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TeamModel>(
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

  /// selectTeamByTeamCode
  ///
  /// Parameters:
  ///   [teamCode]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [TeamModel] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<TeamModel>> selectTeamByTeamCode({
    required String teamCode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        '/team/code/{teamCode}'.replaceAll('{' 'teamCode' '}', teamCode);
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

    TeamModel? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<TeamModel, TeamModel>(rawData, 'TeamModel');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TeamModel>(
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

  /// selectTeamList
  ///
  /// Parameters:
  ///   [accountId]
  ///   [name]
  ///   [delYn]
  ///   [startCreatedAt]
  ///   [endCreatedAt]
  ///   [startUpdatedAt]
  ///   [endUpdatedAt]
  ///   [contract]
  ///   [carNickname]
  ///   [lat]
  ///   [lon]
  ///   [add1]
  ///   [add2]
  ///   [zipCode]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [List<TeamModel>] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<List<TeamModel>>> selectTeamList({
    String? accountId,
    String? name,
    String? delYn,
    String? startCreatedAt,
    String? endCreatedAt,
    String? startUpdatedAt,
    String? endUpdatedAt,
    String? contract,
    String? carNickname,
    String? lat,
    String? lon,
    String? add1,
    String? add2,
    String? zipCode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = '/team';
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
      if (accountId != null) 'accountId': accountId,
      if (name != null) 'name': name,
      if (delYn != null) 'delYn': delYn,
      if (startCreatedAt != null) 'startCreatedAt': startCreatedAt,
      if (endCreatedAt != null) 'endCreatedAt': endCreatedAt,
      if (startUpdatedAt != null) 'startUpdatedAt': startUpdatedAt,
      if (endUpdatedAt != null) 'endUpdatedAt': endUpdatedAt,
      if (contract != null) 'contract': contract,
      if (carNickname != null) 'carNickname': carNickname,
      if (lat != null) 'lat': lat,
      if (lon != null) 'lon': lon,
      if (add1 != null) 'add1': add1,
      if (add2 != null) 'add2': add2,
      if (zipCode != null) 'zipCode': zipCode,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<TeamModel>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<TeamModel>, TeamModel>(rawData, 'List<TeamModel>');
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<TeamModel>>(
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

  /// updateTeam
  ///
  /// Parameters:
  ///   [teamRequest]
  ///   [teamSeq]
  ///   [cancelToken] - 작업을 취소하는 데 사용할 수 있는 [CancelToken].
  ///   [headers] - 요청에 헤더를 추가하는 데 사용할 수 있음.
  ///   [extras] - 요청에 플래그를 추가하는 데 사용 가능.
  ///   [validateStatus] - 응답의 HTTP 상태를 기반으로 요청 성공 여부를 판단하는 데 사용할 수 있는 [ValidateStatus] 콜백.
  ///   [onSendProgress] - 전송 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///   [onReceiveProgress] - 수신 진행률을 가져오는 데 사용할 수 있는 [ProgressCallback].
  ///
  /// [String] 타입 [Response]을 포함하는 [Future] 반환.
  /// API 호출 또는 직렬화에 실패하면 [DioException] 발생.
  Future<Response<String>> updateTeam({
    required TeamRequest teamRequest,
    required int teamSeq,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        '/team/{teamSeq}'.replaceAll('{' 'teamSeq' '}', teamSeq.toString());
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
      _bodyData = jsonEncode(teamRequest);
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
