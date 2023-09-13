# wegooli_friends.api.ShareServiceControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                          | HTTP request                   | Description |
| ------------------------------------------------------------------------------- | ------------------------------ | ----------- |
| [**getShareService**](ShareServiceControllerApi.md#getshareservice)             | **GET** /getShareService       |
| [**getShareServiceDetail**](ShareServiceControllerApi.md#getshareservicedetail) | **GET** /getShareServiceDetail |
| [**setServiceLeader**](ShareServiceControllerApi.md#setserviceleader)           | **GET** /setServiceLeader      |

> getShareService
> List<ShareServiceModel> getShareService(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.shareServiceApi;
final ShareServiceRequest request;

try {
    final response = api.getShareService(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareServiceControllerApi->getShareService: $e\n');
}
```

### Parameters

| Name        | Type                           | Description | Notes |
| ----------- | ------------------------------ | ----------- | ----- |
| **request** | [**ShareServiceRequest**](.md) |             |

### Return type

[**List&lt;ShareServiceModel&gt;**](ShareServiceModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> getShareServiceDetail
> ServiceDetail getShareServiceDetail(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.shareServiceApi;
final ServiceCarDetailRequest request;

try {
    final response = api.getShareServiceDetail(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareServiceControllerApi->getShareServiceDetail: $e\n');
}
```

### Parameters

| Name        | Type                               | Description | Notes |
| ----------- | ---------------------------------- | ----------- | ----- |
| **request** | [**ServiceCarDetailRequest**](.md) |             |

### Return type

[**ServiceDetail**](ServiceDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> setServiceLeader
> String setServiceLeader(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = wegooli.shareServiceApi;
final LeaderSetRequest request;

try {
    final response = api.setServiceLeader(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareServiceControllerApi->setServiceLeader: $e\n');
}
```

### Parameters

| Name        | Type                        | Description | Notes |
| ----------- | --------------------------- | ----------- | ----- |
| **request** | [**LeaderSetRequest**](.md) |             |

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
