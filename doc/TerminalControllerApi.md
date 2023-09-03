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

> registTerminal
> registTerminal(terminalRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final TerminalRequest terminalRequest;

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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTerminal
> TerminalModel selectTerminal(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final int seq = 56;

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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectTerminalList
> List<TerminalModel> selectTerminalList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final TerminalRequest request;

try {
    final response = api.selectTerminalList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->selectTerminalList: $e\n');
}
```

### Parameters

| Name        | Type                       | Description | Notes |
| ----------- | -------------------------- | ----------- | ----- |
| **request** | [**TerminalRequest**](.md) |             |

### Return type

[**List&lt;TerminalModel&gt;**](TerminalModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateTerminal
> updateTerminal(terminalUpdateRequest, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTerminalControllerApi();
final TerminalUpdateRequest terminalUpdateRequest;
final int seq = 56;

try {
    api.updateTerminal(terminalUpdateRequest, seq);
} catch on DioException (e) {
    print('Exception when calling TerminalControllerApi->updateTerminal: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description | Notes |
| ------------------------- | ----------------------------------------------------- | ----------- | ----- |
| **terminalUpdateRequest** | [**TerminalUpdateRequest**](TerminalUpdateRequest.md) |             |
| **seq**                   | **int**                                               |             |

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
