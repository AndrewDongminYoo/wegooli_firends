# wegooli_friends.api.ScheduleControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                | HTTP request                   | Description |
| --------------------------------------------------------------------- | ------------------------------ | ----------- |
| [**deleteSchedule**](ScheduleControllerApi.md#deleteschedule)         | **PUT** /schedule/delete/{seq} |
| [**registSchedule**](ScheduleControllerApi.md#registschedule)         | **POST** /schedule/regist      |
| [**selectSchedule**](ScheduleControllerApi.md#selectschedule)         | **GET** /schedule/detail/{seq} |
| [**selectScheduleList**](ScheduleControllerApi.md#selectschedulelist) | **GET** /schedule/list         |
| [**updateSchedule**](ScheduleControllerApi.md#updateschedule)         | **PUT** /schedule/update/{seq} |

> deleteSchedule
> deleteSchedule(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getScheduleControllerApi();
final int seq = 56; // int |

try {
    api.deleteSchedule(seq);
} catch on DioException (e) {
    print('Exception when calling ScheduleControllerApi->deleteSchedule: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> registSchedule
> registSchedule(scheduleRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getScheduleControllerApi();
final ScheduleRequest scheduleRequest = ; // ScheduleRequest |

try {
    api.registSchedule(scheduleRequest);
} catch on DioException (e) {
    print('Exception when calling ScheduleControllerApi->registSchedule: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **scheduleRequest** | [**ScheduleRequest**](ScheduleRequest.md) |             |

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectSchedule
> ScheduleModel selectSchedule(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getScheduleControllerApi();
final int seq = 56; // int |

try {
    final response = api.selectSchedule(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ScheduleControllerApi->selectSchedule: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**ScheduleModel**](ScheduleModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectScheduleList
> BuiltList<ScheduleModel> selectScheduleList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getScheduleControllerApi();
final ScheduleRequest request = ; // ScheduleRequest |

try {
    final response = api.selectScheduleList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ScheduleControllerApi->selectScheduleList: $e\n');
}
```

### Parameters

| Name        | Type                       | Description | Notes |
| ----------- | -------------------------- | ----------- | ----- |
| **request** | [**ScheduleRequest**](.md) |             |

### Return type

[**BuiltList&lt;ScheduleModel&gt;**](ScheduleModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateSchedule
> updateSchedule(seq, scheduleRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getScheduleControllerApi();
final int seq = 56; // int |
final ScheduleRequest scheduleRequest = ; // ScheduleRequest |

try {
    api.updateSchedule(seq, scheduleRequest);
} catch on DioException (e) {
    print('Exception when calling ScheduleControllerApi->updateSchedule: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **seq**             | **int**                                   |             |
| **scheduleRequest** | [**ScheduleRequest**](ScheduleRequest.md) |             |

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
