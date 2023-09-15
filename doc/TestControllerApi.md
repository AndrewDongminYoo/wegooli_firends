# wegooli_friends.api.TestControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                        | HTTP request       | Description |
| --------------------------------------------- | ------------------ | ----------- |
| [**callTest**](TestControllerApi.md#calltest) | **GET** /test/test |

> callTest
> Object callTest(model)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.testApi;
final TestModel model;

try {
    final response = api.callTest(model);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TestControllerApi->callTest: $e\n');
}
```

### Parameters

| Name      | Type                 | Description | Notes |
| --------- | -------------------- | ----------- | ----- |
| **model** | [**TestModel**](.md) |             |

### Return type

**Object**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
