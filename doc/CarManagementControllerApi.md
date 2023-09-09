# wegooli_friends.api.CarManagementControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                               | HTTP request                     | Description |
| ------------------------------------------------------------------------------------ | -------------------------------- | ----------- |
| [**deleteCarManagement**](CarManagementControllerApi.md#deletecarmanagement)         | **DELETE** /car/management/{seq} |
| [**insertCarManagement**](CarManagementControllerApi.md#insertcarmanagement)         | **POST** /car/management         |
| [**selectCarManagement**](CarManagementControllerApi.md#selectcarmanagement)         | **GET** /car/management/{seq}    |
| [**selectCarManagementList**](CarManagementControllerApi.md#selectcarmanagementlist) | **GET** /car/management          |
| [**updateCarManagement**](CarManagementControllerApi.md#updatecarmanagement)         | **PUT** /car/management/{seq}    |

> deleteCarManagement
> bool deleteCarManagement(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getCarManagementControllerApi();
final int seq = 56;

try {
    final response = api.deleteCarManagement(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->deleteCarManagement: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

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

> insertCarManagement
> int insertCarManagement(insertCarManagementRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getCarManagementControllerApi();
final InsertCarManagementRequest insertCarManagementRequest;

try {
    final response = api.insertCarManagement(insertCarManagementRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->insertCarManagement: $e\n');
}
```

### Parameters

| Name                           | Type                                                            | Description | Notes |
| ------------------------------ | --------------------------------------------------------------- | ----------- | ----- |
| **insertCarManagementRequest** | [**InsertCarManagementRequest**](InsertCarManagementRequest.md) |             |

### Return type

**int**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectCarManagement
> CarManagementModel selectCarManagement(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getCarManagementControllerApi();
final int seq = 56;

try {
    final response = api.selectCarManagement(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->selectCarManagement: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**CarManagementModel**](CarManagementModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectCarManagementList
> List<CarManagementModel> selectCarManagementList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getCarManagementControllerApi();
final SelectCarManagementRequest request;

try {
    final response = api.selectCarManagementList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->selectCarManagementList: $e\n');
}
```

### Parameters

| Name        | Type                                  | Description | Notes |
| ----------- | ------------------------------------- | ----------- | ----- |
| **request** | [**SelectCarManagementRequest**](.md) |             |

### Return type

[**List&lt;CarManagementModel&gt;**](CarManagementModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateCarManagement
> int updateCarManagement(updateCarManagementRequest, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getCarManagementControllerApi();
final UpdateCarManagementRequest updateCarManagementRequest;
final int seq = 56;

try {
    final response = api.updateCarManagement(updateCarManagementRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->updateCarManagement: $e\n');
}
```

### Parameters

| Name                           | Type                                                            | Description | Notes |
| ------------------------------ | --------------------------------------------------------------- | ----------- | ----- |
| **updateCarManagementRequest** | [**UpdateCarManagementRequest**](UpdateCarManagementRequest.md) |             |
| **seq**                        | **int**                                                         |             |

### Return type

**int**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
