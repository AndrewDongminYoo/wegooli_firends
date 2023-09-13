# wegooli_friends.api.CarControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                 | HTTP request                 | Description |
| ------------------------------------------------------ | ---------------------------- | ----------- |
| [**deleteCar**](CarControllerApi.md#deletecar)         | **PUT** /car/delete/{carNum} |
| [**registCar**](CarControllerApi.md#registcar)         | **POST** /car/regist         |
| [**selectCar**](CarControllerApi.md#selectcar)         | **GET** /car/detail/{carNum} |
| [**selectCarList**](CarControllerApi.md#selectcarlist) | **GET** /car/list            |
| [**updateCar**](CarControllerApi.md#updatecar)         | **PUT** /car/update/{carNum} |

> deleteCar
> deleteCar(carNum)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.carApi;
final String carNum = carNum_example;

try {
    api.deleteCar(carNum);
} catch on DioException (e) {
    print('Exception when calling CarControllerApi->deleteCar: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

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

> registCar
> registCar(carRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.carApi;
final CarRequest carRequest;

try {
    api.registCar(carRequest);
} catch on DioException (e) {
    print('Exception when calling CarControllerApi->registCar: $e\n');
}
```

### Parameters

| Name           | Type                            | Description | Notes |
| -------------- | ------------------------------- | ----------- | ----- |
| **carRequest** | [**CarRequest**](CarRequest.md) |             |

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

> selectCar
> CarModel selectCar(carNum)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.carApi;
final String carNum = carNum_example;

try {
    final response = api.selectCar(carNum);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarControllerApi->selectCar: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **carNum** | **String** |             |

### Return type

[**CarModel**](CarModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectCarList
> List<CarModel> selectCarList(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.carApi;
final CarRequest request;

try {
    final response = api.selectCarList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CarControllerApi->selectCarList: $e\n');
}
```

### Parameters

| Name        | Type                  | Description | Notes |
| ----------- | --------------------- | ----------- | ----- |
| **request** | [**CarRequest**](.md) |             |

### Return type

[**List&lt;CarModel&gt;**](CarModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateCar
> updateCar(carRequest, carNum)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.carApi;
final CarRequest carRequest;
final String carNum = carNum_example;

try {
    api.updateCar(carRequest, carNum);
} catch on DioException (e) {
    print('Exception when calling CarControllerApi->updateCar: $e\n');
}
```

### Parameters

| Name           | Type                            | Description | Notes |
| -------------- | ------------------------------- | ----------- | ----- |
| **carRequest** | [**CarRequest**](CarRequest.md) |             |
| **carNum**     | **String**                      |             |

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
