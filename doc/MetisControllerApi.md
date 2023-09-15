# wegooli_friends.api.MetisControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                       | HTTP request                     | Description |
| ---------------------------------------------------------------------------- | -------------------------------- | ----------- |
| [**carLogTop**](MetisControllerApi.md#carlogtop)                             | **GET** /metis/history/carLogTop |
| [**history**](MetisControllerApi.md#history)                                 | **GET** /metis/history           |
| [**receivced**](MetisControllerApi.md#receivced)                             | **GET** /metis/m2m/digiparts     |
| [**receiveTerminalResponse**](MetisControllerApi.md#receiveterminalresponse) | **GET** /metis/digiparts         |

> carLogTop
> CarHistoryDto carLogTop(carNum)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.metisApi;
final String carNum = carNum_example;

try {
    final response = api.carLogTop(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MetisControllerApi->carLogTop: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

[**CarHistoryDto**](CarHistoryDto.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> history
> List<CarHistoryDto> history(carNum)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.metisApi;
final String carNum = carNum_example;

try {
    final response = api.history(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MetisControllerApi->history: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes      |
| ---------- | ---------- | ----------- | ---------- |
| **carNum** | **String** |             | [optional] |

### Return type

[**List&lt;CarHistoryDto&gt;**](CarHistoryDto.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> receivced
> String receivced()

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.metisApi;

try {
    final response = api.receivced();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MetisControllerApi->receivced: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

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

> receiveTerminalResponse
> String receiveTerminalResponse(dto)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.metisApi;
final DeviceControlResultDto dto;

try {
    final response = api.receiveTerminalResponse(dto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MetisControllerApi->receiveTerminalResponse: $e\n');
}
```

### Parameters

| Name    | Type                              | Description | Notes |
| ------- | --------------------------------- | ----------- | ----- |
| **dto** | [**DeviceControlResultDto**](.md) |             |

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
