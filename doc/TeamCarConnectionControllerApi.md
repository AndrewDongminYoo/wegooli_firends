# wegooli_friends.api.TeamCarConnectionControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                             | HTTP request                           | Description |
| ---------------------------------------------------------------------------------- | -------------------------------------- | ----------- |
| [**teamCarConnection**](TeamCarConnectionControllerApi.md#teamcarconnection)       | **PUT** /team/car/teamCarConnection    |
| [**teamCarDisConnection**](TeamCarConnectionControllerApi.md#teamcardisconnection) | **PUT** /team/car/teamCarDisConnection |

> teamCarConnection
> String teamCarConnection(teamCarConnection)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamCarConnectionApi;
final TeamCarConnection teamCarConnection;

try {
    final response = api.teamCarConnection(teamCarConnection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamCarConnectionControllerApi->teamCarConnection: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description | Notes |
| --------------------- | --------------------------------------------- | ----------- | ----- |
| **teamCarConnection** | [**TeamCarConnection**](TeamCarConnection.md) |             |

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

> teamCarDisConnection
> String teamCarDisConnection(teamCarConnection)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.teamCarConnectionApi;
final TeamCarConnection teamCarConnection;

try {
    final response = api.teamCarDisConnection(teamCarConnection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TeamCarConnectionControllerApi->teamCarDisConnection: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description | Notes |
| --------------------- | --------------------------------------------- | ----------- | ----- |
| **teamCarConnection** | [**TeamCarConnection**](TeamCarConnection.md) |             |

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
