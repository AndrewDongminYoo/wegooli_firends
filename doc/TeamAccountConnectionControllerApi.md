# wegooli_friends.api.TeamAccountConnectionControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                                   | HTTP request                             | Description |
| ---------------------------------------------------------------------------------------- | ---------------------------------------- | ----------- |
| [**deleteTeamAccount**](TeamAccountConnectionControllerApi.md#deleteteamaccount)         | **DELETE** /team/account/{seq}           |
| [**insertTeamAccount**](TeamAccountConnectionControllerApi.md#insertteamaccount)         | **POST** /team/account                   |
| [**inviteTeamAccount**](TeamAccountConnectionControllerApi.md#inviteteamaccount)         | **PUT** /team/account/{accountId}/{code} |
| [**selectTeamAccount**](TeamAccountConnectionControllerApi.md#selectteamaccount)         | **GET** /team/account/{seq}              |
| [**selectTeamAccountList**](TeamAccountConnectionControllerApi.md#selectteamaccountlist) | **GET** /team/account                    |

> deleteTeamAccount
> String deleteTeamAccount(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamAccountConnectionApi;
final int seq = 56;

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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamAccountConnectionApi;
final TeamAccountConnectionRequest teamAccountConnectionRequest;

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

> inviteTeamAccount
> String inviteTeamAccount(accountId, code)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamAccountConnectionApi;
final String accountId = accountId_example;
final String code = code_example;

try {
    final response = api.inviteTeamAccount(accountId, code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamAccountConnectionControllerApi->inviteTeamAccount: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **accountId** | **String** |             |
| **code**      | **String** |             |

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

> selectTeamAccount
> TeamAccountConnectionModel selectTeamAccount(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamAccountConnectionApi;
final int seq = 56;

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
> List<TeamAccountConnectionResponse> selectTeamAccountList(teamSeq, accountId, startJoinedAt, endJoinedAt, startLeavedAt, endLeavedAt, isLeaved)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamAccountConnectionApi;
final int teamSeq = 56;
final String accountId = accountId_example;
final String startJoinedAt = startJoinedAt_example;
final String endJoinedAt = endJoinedAt_example;
final String startLeavedAt = startLeavedAt_example;
final String endLeavedAt = endLeavedAt_example;
final String isLeaved = isLeaved_example;

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

[**List&lt;TeamAccountConnectionResponse&gt;**](TeamAccountConnectionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
