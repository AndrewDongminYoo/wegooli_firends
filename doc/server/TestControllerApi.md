# wegooli_friends.api.TestControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                        | HTTP request       | Description |
| --------------------------------------------- | ------------------ | ----------- |
| [**callTest**](TestControllerApi.md#calltest) | **GET** /test/test |

### **callTest**

> BuiltList<TestModel> callTest(model)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getTestControllerApi();
final TestModel model = ; // TestModel |

try {
    final response = api.callTest(model);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TestControllerApi->callTest: $e\n');
}
```

### Parameters

| Name      | Type                    | Description | Notes |
| --------- | ----------------------- | ----------- | ----- |
| **model** | [**TestModel**](../.md) |             |

### Return type

[**BuiltList&lt;TestModel&gt;**](TestModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)
