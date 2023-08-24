# wegooli_friends.api.DeviceControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                                      | HTTP request                  | Description |
| ------------------------------------------------------------------------------------------- | ----------------------------- | ----------- |
| [**doorClose**](DeviceControllerApi.md#doorclose)                                           | **PUT** /control/door/close   |
| [**doorOpen**](DeviceControllerApi.md#dooropen)                                             | **PUT** /control/door/open    |
| [**selectDeviceControlHistoryList**](DeviceControllerApi.md#selectdevicecontrolhistorylist) | **GET** /control/history/list |
| [**turnOnEmergencyLight**](DeviceControllerApi.md#turnonemergencylight)                     | **PUT** /control/light        |
| [**turnOnHorn**](DeviceControllerApi.md#turnonhorn)                                         | **PUT** /control/horn         |

> doorClose
> bool doorClose(carNum)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getDeviceControllerApi();
final String carNum = carNum_example; // String |

try {
    final response = api.doorClose(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceControllerApi->doorClose: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> doorOpen
> bool doorOpen(carNum)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getDeviceControllerApi();
final String carNum = carNum_example; // String |

try {
    final response = api.doorOpen(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceControllerApi->doorOpen: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectDeviceControlHistoryList
> BuiltList<CarControlHistoryModel> selectDeviceControlHistoryList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getDeviceControllerApi();
final CarControlHistoryModel request = ; // CarControlHistoryModel |

try {
    final response = api.selectDeviceControlHistoryList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceControllerApi->selectDeviceControlHistoryList: $e\n');
}
```

### Parameters

| Name        | Type                              | Description | Notes |
| ----------- | --------------------------------- | ----------- | ----- |
| **request** | [**CarControlHistoryModel**](.md) |             |

### Return type

[**BuiltList&lt;CarControlHistoryModel&gt;**](CarControlHistoryModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> turnOnEmergencyLight
> bool turnOnEmergencyLight(carNum)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getDeviceControllerApi();
final String carNum = carNum_example; // String |

try {
    final response = api.turnOnEmergencyLight(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceControllerApi->turnOnEmergencyLight: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> turnOnHorn
> bool turnOnHorn(carNum)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getDeviceControllerApi();
final String carNum = carNum_example; // String |

try {
    final response = api.turnOnHorn(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceControllerApi->turnOnHorn: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
