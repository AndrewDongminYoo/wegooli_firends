# wegooli_friends.api.OperatorPageControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                            | HTTP request                  | Description |
| --------------------------------------------------------------------------------- | ----------------------------- | ----------- |
| [**selectOperatorCarList**](OperatorPageControllerApi.md#selectoperatorcarlist)   | **GET** /operator/car         |
| [**selectOperatorTeamList**](OperatorPageControllerApi.md#selectoperatorteamlist) | **GET** /operator/team        |
| [**selectOperatorUserList**](OperatorPageControllerApi.md#selectoperatoruserlist) | **GET** /operator/user        |
| [**teamDetail**](OperatorPageControllerApi.md#teamdetail)                         | **GET** /operator/team/detail |

> selectOperatorCarList
>
> List<OperatorCarModel> selectOperatorCarList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getOperatorPageControllerApi();
final OperatorCarRequest request;

try {
    final response = api.selectOperatorCarList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatorPageControllerApi->selectOperatorCarList: $e\n');
}
```

### Parameters

| Name        | Type                          | Description | Notes |
| ----------- | ----------------------------- | ----------- | ----- |
| **request** | [**OperatorCarRequest**](.md) |             |

### Return type

[**List&lt;OperatorCarModel&gt;**](OperatorCarModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectOperatorTeamList
>
> List<OperatorTeamModel> selectOperatorTeamList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getOperatorPageControllerApi();
final OperatorTeamRequest request;

try {
    final response = api.selectOperatorTeamList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatorPageControllerApi->selectOperatorTeamList: $e\n');
}
```

### Parameters

| Name        | Type                           | Description | Notes |
| ----------- | ------------------------------ | ----------- | ----- |
| **request** | [**OperatorTeamRequest**](.md) |             |

### Return type

[**List&lt;OperatorTeamModel&gt;**](OperatorTeamModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectOperatorUserList
>
> List<OperatorUserModel> selectOperatorUserList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getOperatorPageControllerApi();
final OperatorUserRequest request;

try {
    final response = api.selectOperatorUserList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatorPageControllerApi->selectOperatorUserList: $e\n');
}
```

### Parameters

| Name        | Type                           | Description | Notes |
| ----------- | ------------------------------ | ----------- | ----- |
| **request** | [**OperatorUserRequest**](.md) |             |

### Return type

[**List&lt;OperatorUserModel&gt;**](OperatorUserModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> teamDetail
>
> OperatorTeamDetail teamDetail(teamSeq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getOperatorPageControllerApi();
final int teamSeq = 56;

try {
    final response = api.teamDetail(teamSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatorPageControllerApi->teamDetail: $e\n');
}
```

### Parameters

| Name        | Type    | Description | Notes |
| ----------- | ------- | ----------- | ----- |
| **teamSeq** | **int** |             |

### Return type

[**OperatorTeamDetail**](OperatorTeamDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
