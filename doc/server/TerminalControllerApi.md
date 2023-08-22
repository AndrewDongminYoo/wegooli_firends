# wegooli_friends.api.TerminalControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                | HTTP request                   | Description |
| --------------------------------------------------------------------- | ------------------------------ | ----------- |
| [**registTerminal**](TerminalControllerApi.md#registterminal)         | **POST** /terminal/regist      |
| [**selectTerminal**](TerminalControllerApi.md#selectterminal)         | **GET** /terminal/detail/{seq} |
| [**selectTerminalList**](TerminalControllerApi.md#selectterminallist) | **GET** /terminal/list         |
| [**updateTerminal**](TerminalControllerApi.md#updateterminal)         | **PUT** /terminal/update/{seq} |

### **registTerminal**

> registTerminal(terminalRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final TerminalRequest terminalRequest = ; // TerminalRequest |

try {
    api.registTerminal(terminalRequest);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->registTerminal: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **terminalRequest** | [**TerminalRequest**](TerminalRequest.md) |             |

### Return type

void (empty response body)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined
[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectTerminal**

> TerminalModel selectTerminal(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final int seq = 56; // int |

try {
    final response = api.selectTerminal(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->selectTerminal: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**TerminalModel**](TerminalModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectTerminalList**

> BuiltList<TerminalModel> selectTerminalList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final TerminalRequest request = ; // TerminalRequest |

try {
    final response = api.selectTerminalList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->selectTerminalList: $e\n');
}
```

### Parameters

| Name        | Type                          | Description | Notes |
| ----------- | ----------------------------- | ----------- | ----- |
| **request** | [**TerminalRequest**](../.md) |             |

### Return type

[**BuiltList&lt;TerminalModel&gt;**](TerminalModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **updateTerminal**

> updateTerminal(seq, terminalRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final int seq = 56; // int |
final TerminalRequest terminalRequest = ; // TerminalRequest |

try {
    api.updateTerminal(seq, terminalRequest);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->updateTerminal: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **seq**             | **int**                                   |             |
| **terminalRequest** | [**TerminalRequest**](TerminalRequest.md) |             |

### Return type

void (empty response body)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined
[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)
