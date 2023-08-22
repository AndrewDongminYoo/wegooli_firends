# wegooli_friends.api.TeamControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                | HTTP request                  | Description |
| --------------------------------------------------------------------- | ----------------------------- | ----------- |
| [**deleteTeam**](TeamControllerApi.md#deleteteam)                     | **DELETE** /team/{teamSeq}    |
| [**insertTeam**](TeamControllerApi.md#insertteam)                     | **POST** /team                |
| [**selectTeam**](TeamControllerApi.md#selectteam)                     | **GET** /team/{teamSeq}       |
| [**selectTeamByTeamCode**](TeamControllerApi.md#selectteambyteamcode) | **GET** /team/code/{teamCode} |
| [**selectTeamList**](TeamControllerApi.md#selectteamlist)             | **GET** /team                 |
| [**updateTeam**](TeamControllerApi.md#updateteam)                     | **PUT** /team/{teamSeq}       |

### **deleteTeam**

> String deleteTeam(teamSeq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final int teamSeq = 56; // int |

try {
    final response = api.deleteTeam(teamSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->deleteTeam: $e\n');
}
```

### Parameters

| Name        | Type    | Description | Notes |
| ----------- | ------- | ----------- | ----- |
| **teamSeq** | **int** |             |

### Return type

**String**

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **insertTeam**

> JsonObject insertTeam(teamRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final TeamRequest teamRequest = ; // TeamRequest |

try {
    final response = api.insertTeam(teamRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->insertTeam: $e\n');
}
```

### Parameters

| Name            | Type                              | Description | Notes |
| --------------- | --------------------------------- | ----------- | ----- |
| **teamRequest** | [**TeamRequest**](TeamRequest.md) |             |

### Return type

[**JsonObject**](../JsonObject.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectTeam**

> TeamModel selectTeam(teamSeq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final int teamSeq = 56; // int |

try {
    final response = api.selectTeam(teamSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->selectTeam: $e\n');
}
```

### Parameters

| Name        | Type    | Description | Notes |
| ----------- | ------- | ----------- | ----- |
| **teamSeq** | **int** |             |

### Return type

[**TeamModel**](TeamModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectTeamByTeamCode**

> TeamModel selectTeamByTeamCode(teamCode)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final String teamCode = teamCode_example; // String |

try {
    final response = api.selectTeamByTeamCode(teamCode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->selectTeamByTeamCode: $e\n');
}
```

### Parameters

| Name         | Type       | Description | Notes |
| ------------ | ---------- | ----------- | ----- |
| **teamCode** | **String** |             |

### Return type

[**TeamModel**](TeamModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectTeamList**

> BuiltList<TeamModel> selectTeamList(accountId, name, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, contract)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final String accountId = accountId_example; // String |
final String name = name_example; // String |
final String delYn = delYn_example; // String |
final String startCreatedAt = startCreatedAt_example; // String |
final String endCreatedAt = endCreatedAt_example; // String |
final String startUpdatedAt = startUpdatedAt_example; // String |
final String endUpdatedAt = endUpdatedAt_example; // String |
final String contract = contract_example; // String |

try {
    final response = api.selectTeamList(accountId, name, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, contract);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->selectTeamList: $e\n');
}
```

### Parameters

| Name               | Type       | Description | Notes      |
| ------------------ | ---------- | ----------- | ---------- |
| **accountId**      | **String** |             | [optional] |
| **name**           | **String** |             | [optional] |
| **delYn**          | **String** |             | [optional] |
| **startCreatedAt** | **String** |             | [optional] |
| **endCreatedAt**   | **String** |             | [optional] |
| **startUpdatedAt** | **String** |             | [optional] |
| **endUpdatedAt**   | **String** |             | [optional] |
| **contract**       | **String** |             | [optional] |

### Return type

[**BuiltList&lt;TeamModel&gt;**](TeamModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **updateTeam**

> String updateTeam(teamSeq, teamRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTeamControllerApi();
final int teamSeq = 56; // int |
final TeamRequest teamRequest = ; // TeamRequest |

try {
    final response = api.updateTeam(teamSeq, teamRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->updateTeam: $e\n');
}
```

### Parameters

| Name            | Type                              | Description | Notes |
| --------------- | --------------------------------- | ----------- | ----- |
| **teamSeq**     | **int**                           |             |
| **teamRequest** | [**TeamRequest**](TeamRequest.md) |             |

### Return type

**String**

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)
