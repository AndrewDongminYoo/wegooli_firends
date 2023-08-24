# wegooli_friends.api.TeamAccountConnectionControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                                   | HTTP request                   | Description |
| ---------------------------------------------------------------------------------------- | ------------------------------ | ----------- |
| [**deleteTeamAccount**](TeamAccountConnectionControllerApi.md#deleteteamaccount)         | **DELETE** /team/account/{seq} |
| [**insertTeamAccount**](TeamAccountConnectionControllerApi.md#insertteamaccount)         | **POST** /team/account         |
| [**selectTeamAccount**](TeamAccountConnectionControllerApi.md#selectteamaccount)         | **GET** /team/account/{seq}    |
| [**selectTeamAccountList**](TeamAccountConnectionControllerApi.md#selectteamaccountlist) | **GET** /team/account          |

> deleteTeamAccount
> String deleteTeamAccount(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamAccountConnectionControllerApi();
final int seq = 56; // int |

try {
    final response = api.deleteTeamAccount(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamAccountConnectionControllerApi->deleteTeamAccount: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

**String**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> insertTeamAccount
> String insertTeamAccount(teamAccountConnectionRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamAccountConnectionControllerApi();
final TeamAccountConnectionRequest teamAccountConnectionRequest = ; // TeamAccountConnectionRequest |

try {
    final response = api.insertTeamAccount(teamAccountConnectionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamAccountConnectionControllerApi->insertTeamAccount: $e\n');
}
```

### Parameters

| Name                             | Type                                                                | Description | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ----------- | ----- |
| **teamAccountConnectionRequest** | [**TeamAccountConnectionRequest**](TeamAccountConnectionRequest.md) |             |

### Return type

**String**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTeamAccount
> TeamAccountConnectionModel selectTeamAccount(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamAccountConnectionControllerApi();
final int seq = 56; // int |

try {
    final response = api.selectTeamAccount(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamAccountConnectionControllerApi->selectTeamAccount: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**TeamAccountConnectionModel**](TeamAccountConnectionModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTeamAccountList
> BuiltList<TeamAccountConnectionResponse> selectTeamAccountList(teamSeq, accountId, startJoinedAt, endJoinedAt, startLeavedAt, endLeavedAt, isLeaved)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamAccountConnectionControllerApi();
final int teamSeq = 56; // int |
final String accountId = accountId_example; // String |
final String startJoinedAt = startJoinedAt_example; // String |
final String endJoinedAt = endJoinedAt_example; // String |
final String startLeavedAt = startLeavedAt_example; // String |
final String endLeavedAt = endLeavedAt_example; // String |
final String isLeaved = isLeaved_example; // String |

try {
    final response = api.selectTeamAccountList(teamSeq, accountId, startJoinedAt, endJoinedAt, startLeavedAt, endLeavedAt, isLeaved);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamAccountConnectionControllerApi->selectTeamAccountList: $e\n');
}
```

### Parameters

| Name              | Type       | Description | Notes      |
| ----------------- | ---------- | ----------- | ---------- |
| **teamSeq**       | **int**    |             | [optional] |
| **accountId**     | **String** |             | [optional] |
| **startJoinedAt** | **String** |             | [optional] |
| **endJoinedAt**   | **String** |             | [optional] |
| **startLeavedAt** | **String** |             | [optional] |
| **endLeavedAt**   | **String** |             | [optional] |
| **isLeaved**      | **String** |             | [optional] |

### Return type

[**BuiltList&lt;TeamAccountConnectionResponse&gt;**](TeamAccountConnectionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
