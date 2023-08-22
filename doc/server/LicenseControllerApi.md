# wegooli_friends.api.LicenseControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                           | HTTP request                           | Description |
| -------------------------------------------------------------------------------- | -------------------------------------- | ----------- |
| [**deleteLicense**](LicenseControllerApi.md#deletelicense)                       | **DELETE** /license/{seq}              |
| [**deleteLicenseByMemberSeq**](LicenseControllerApi.md#deletelicensebymemberseq) | **DELETE** /license/member/{memberSeq} |
| [**insertLicense**](LicenseControllerApi.md#insertlicense)                       | **POST** /license                      |
| [**selectLicense**](LicenseControllerApi.md#selectlicense)                       | **GET** /license/{seq}                 |
| [**selectLicenseList**](LicenseControllerApi.md#selectlicenselist)               | **GET** /license/list                  |
| [**selectServiceStop**](LicenseControllerApi.md#selectservicestop)               | **GET** /license/stop                  |
| [**updateLicense**](LicenseControllerApi.md#updatelicense)                       | **PUT** /license/{seq}                 |

### **deleteLicense**

> bool deleteLicense(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final int seq = 56; // int |

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

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **deleteLicenseByMemberSeq**

> bool deleteLicenseByMemberSeq(memberSeq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final int memberSeq = 56; // int |

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

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **insertLicense**

> int insertLicense(licenseRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final LicenseRequest licenseRequest = ; // LicenseRequest |

try {
    final response = api.insertLicense(licenseRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->insertLicense: $e\n');
}
```

### Parameters

| Name               | Type                                    | Description | Notes |
| ------------------ | --------------------------------------- | ----------- | ----- |
| **licenseRequest** | [**LicenseRequest**](LicenseRequest.md) |             |

### Return type

**int**

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectLicense**

> LicenseModel selectLicense(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final int seq = 56; // int |

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

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectLicenseList**

> BuiltList<LicenseModel> selectLicenseList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final LicenseRequest request = ; // LicenseRequest |

try {
    final response = api.selectLicenseList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->selectLicenseList: $e\n');
}
```

### Parameters

| Name        | Type                         | Description | Notes |
| ----------- | ---------------------------- | ----------- | ----- |
| **request** | [**LicenseRequest**](../.md) |             |

### Return type

[**BuiltList&lt;LicenseModel&gt;**](LicenseModel.md)

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **selectServiceStop**

> bool selectServiceStop()

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();

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

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

### **updateLicense**

> bool updateLicense(seq, licenseRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getLicenseControllerApi();
final int seq = 56; // int |
final LicenseRequest licenseRequest = ; // LicenseRequest |

try {
    final response = api.updateLicense(seq, licenseRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseControllerApi->updateLicense: $e\n');
}
```

### Parameters

| Name               | Type                                    | Description | Notes |
| ------------------ | --------------------------------------- | ----------- | ----- |
| **seq**            | **int**                                 |             |
| **licenseRequest** | [**LicenseRequest**](LicenseRequest.md) |             |

### Return type

**bool**

### Authorization

[jwtAuth](../../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)
