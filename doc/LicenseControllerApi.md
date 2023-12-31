# wegooli_friends.api.LicenseControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                           | HTTP request                           | Description |
| -------------------------------------------------------------------------------- | -------------------------------------- | ----------- |
| [**deleteLicense**](LicenseControllerApi.md#deletelicense)                       | **DELETE** /license/{seq}              |
| [**deleteLicenseByMemberSeq**](LicenseControllerApi.md#deletelicensebymemberseq) | **DELETE** /license/member/{memberSeq} |
| [**insertLicense**](LicenseControllerApi.md#insertlicense)                       | **POST** /license                      |
| [**isValidLicense**](LicenseControllerApi.md#isvalidlicense)                     | **POST** /license/verify               |
| [**selectLicense**](LicenseControllerApi.md#selectlicense)                       | **GET** /license/{seq}                 |
| [**selectLicenseList**](LicenseControllerApi.md#selectlicenselist)               | **GET** /license/list                  |
| [**selectServiceStop**](LicenseControllerApi.md#selectservicestop)               | **GET** /license/stop                  |
| [**updateLicense**](LicenseControllerApi.md#updatelicense)                       | **PUT** /license/{seq}                 |

> deleteLicense
> bool deleteLicense(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final int seq = 56;

try {
    final response = api.deleteLicense(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->deleteLicense: $e\n');
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

> deleteLicenseByMemberSeq
> bool deleteLicenseByMemberSeq(memberSeq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final int memberSeq = 56;

try {
    final response = api.deleteLicenseByMemberSeq(memberSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->deleteLicenseByMemberSeq: $e\n');
}
```

### Parameters

| Name          | Type    | Description | Notes |
| ------------- | ------- | ----------- | ----- |
| **memberSeq** | **int** |             |

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

> insertLicense
> int insertLicense(insertLicenseRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final InsertLicenseRequest insertLicenseRequest;

try {
    final response = api.insertLicense(insertLicenseRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->insertLicense: $e\n');
}
```

### Parameters

| Name                     | Type                                                | Description | Notes |
| ------------------------ | --------------------------------------------------- | ----------- | ----- |
| **insertLicenseRequest** | [**InsertLicenseRequest**](InsertLicenseRequest.md) |             |

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

> isValidLicense
> bool isValidLicense(validLicenseRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final ValidLicenseRequest validLicenseRequest;

try {
    final response = api.isValidLicense(validLicenseRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->isValidLicense: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description | Notes |
| ----------------------- | ------------------------------------------------- | ----------- | ----- |
| **validLicenseRequest** | [**ValidLicenseRequest**](ValidLicenseRequest.md) |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectLicense
> LicenseModel selectLicense(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final int seq = 56;

try {
    final response = api.selectLicense(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->selectLicense: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**LicenseModel**](LicenseModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectLicenseList
> List<LicenseModel> selectLicenseList(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final LicenseRequest request;

try {
    final response = api.selectLicenseList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->selectLicenseList: $e\n');
}
```

### Parameters

| Name        | Type                      | Description | Notes |
| ----------- | ------------------------- | ----------- | ----- |
| **request** | [**LicenseRequest**](.md) |             |

### Return type

[**List&lt;LicenseModel&gt;**](LicenseModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectServiceStop
> bool selectServiceStop()

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;

try {
    final response = api.selectServiceStop();
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->selectServiceStop: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

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

> updateLicense
> int updateLicense(updateLicenseRequest, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.licenseApi;
final UpdateLicenseRequest updateLicenseRequest;
final int seq = 56;

try {
    final response = api.updateLicense(updateLicenseRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->updateLicense: $e\n');
}
```

### Parameters

| Name                     | Type                                                | Description | Notes |
| ------------------------ | --------------------------------------------------- | ----------- | ----- |
| **updateLicenseRequest** | [**UpdateLicenseRequest**](UpdateLicenseRequest.md) |             |
| **seq**                  | **int**                                             |             |

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
