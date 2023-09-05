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
> int insertCarManagement(carManagementModel)

### Example

```dart
import 'package:wegooli_friends/api.dart';

final api = WegooliFriends().getCarManagementControllerApi();
final CarManagementModel carManagementModel;

try {
    final response = api.insertCarManagement(carManagementModel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->insertCarManagement: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **carManagementModel** | [**CarManagementModel**](CarManagementModel.md) |             |

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

final api = WegooliFriends().getCarManagementControllerApi();
final CarManagementModel request;

try {
    final response = api.selectCarManagementList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->selectCarManagementList: $e\n');
}
```

### Parameters

| Name        | Type                          | Description | Notes |
| ----------- | ----------------------------- | ----------- | ----- |
| **request** | [**CarManagementModel**](.md) |             |

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
> int updateCarManagement(carManagementModel, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';

final api = WegooliFriends().getCarManagementControllerApi();
final CarManagementModel carManagementModel;
final int seq = 56;

try {
    final response = api.updateCarManagement(carManagementModel, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarManagementControllerApi->updateCarManagement: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **carManagementModel** | [**CarManagementModel**](CarManagementModel.md) |             |
| **seq**                | **int**                                         |             |

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
