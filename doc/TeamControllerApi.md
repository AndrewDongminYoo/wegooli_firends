# wegooli_friends.api.TeamControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
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

> deleteTeam
> String deleteTeam(teamSeq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final int teamSeq = 56;

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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> insertTeam
> Object insertTeam(teamRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final TeamRequest teamRequest;

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

**Object**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTeam
> TeamModel selectTeam(teamSeq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final int teamSeq = 56;

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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTeamByTeamCode
> TeamModel selectTeamByTeamCode(teamCode)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final String teamCode = teamCode_example;

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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTeamList
> List<TeamModel> selectTeamList(accountId, name, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, contract, carNickname, lat, lon, add1, add2, zipCode)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final String accountId = accountId_example;
final String name = name_example;
final String delYn = delYn_example;
final String startCreatedAt = startCreatedAt_example;
final String endCreatedAt = endCreatedAt_example;
final String startUpdatedAt = startUpdatedAt_example;
final String endUpdatedAt = endUpdatedAt_example;
final String contract = contract_example;
final String carNickname = carNickname_example;
final String lat = lat_example;
final String lon = lon_example;
final String add1 = add1_example;
final String add2 = add2_example;
final String zipCode = zipCode_example;

try {
    final response = api.selectTeamList(accountId, name, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, contract, carNickname, lat, lon, add1, add2, zipCode);
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
| **carNickname**    | **String** |             | [optional] |
| **lat**            | **String** |             | [optional] |
| **lon**            | **String** |             | [optional] |
| **add1**           | **String** |             | [optional] |
| **add2**           | **String** |             | [optional] |
| **zipCode**        | **String** |             | [optional] |

### Return type

[**List&lt;TeamModel&gt;**](TeamModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateTeam
> String updateTeam(teamRequest, teamSeq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamApi;
final TeamRequest teamRequest;
final int teamSeq = 56;

try {
    final response = api.updateTeam(teamRequest, teamSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamControllerApi->updateTeam: $e\n');
}
```

### Parameters

| Name            | Type                              | Description | Notes |
| --------------- | --------------------------------- | ----------- | ----- |
| **teamRequest** | [**TeamRequest**](TeamRequest.md) |             |
| **teamSeq**     | **int**                           |             |

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
