# wegooli_friends.api.MetisControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                       | HTTP request                 | Description |
| ---------------------------------------------------------------------------- | ---------------------------- | ----------- |
| [**receivced**](MetisControllerApi.md#receivced)                             | **GET** /metis/m2m/digiparts |
| [**receiveTerminalResponse**](MetisControllerApi.md#receiveterminalresponse) | **GET** /metis/digiparts     |

### **receivced**

> String receivced()

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getMetisControllerApi();

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

### **receiveTerminalResponse**

> String receiveTerminalResponse(dto)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getMetisControllerApi();
final DeviceControlResultDTO dto = ; // DeviceControlResultDTO |

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
| **dto** | [**DeviceControlResultDTO**](.md) |             |

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
