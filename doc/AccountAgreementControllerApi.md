# wegooli_friends.api.AccountAgreementControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                                        | HTTP request                                               | Description |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ----------- |
| [**deleteAccountAgreement**](AccountAgreementControllerApi.md#deleteaccountagreement)         | **DELETE** /account/agreement/{classification}/{accountId} |
| [**insertAccountAgreement**](AccountAgreementControllerApi.md#insertaccountagreement)         | **POST** /account/agreement                                |
| [**insertAccountAgreementList**](AccountAgreementControllerApi.md#insertaccountagreementlist) | **POST** /account/agreement/insertList                     |
| [**selectAccountAgreement**](AccountAgreementControllerApi.md#selectaccountagreement)         | **GET** /account/agreement/{classification}/{accountId}    |
| [**selectAccountAgreementList**](AccountAgreementControllerApi.md#selectaccountagreementlist) | **GET** /account/agreement                                 |
| [**updateAccountAgreement**](AccountAgreementControllerApi.md#updateaccountagreement)         | **PUT** /account/agreement                                 |

> deleteAccountAgreement
> String deleteAccountAgreement(classification, accountId)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final String classification = classification_example;
final String accountId = accountId_example;

try {
    final response = api.deleteAccountAgreement(classification, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->deleteAccountAgreement: $e\n');
}
```

### Parameters

| Name               | Type       | Description | Notes |
| ------------------ | ---------- | ----------- | ----- |
| **classification** | **String** |             |
| **accountId**      | **String** |             |

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

> insertAccountAgreement
> String insertAccountAgreement(accountAgreementRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final AccountAgreementRequest accountAgreementRequest;

try {
    final response = api.insertAccountAgreement(accountAgreementRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->insertAccountAgreement: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description | Notes |
| --------------------------- | --------------------------------------------------------- | ----------- | ----- |
| **accountAgreementRequest** | [**AccountAgreementRequest**](AccountAgreementRequest.md) |             |

### Return type

**String**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> insertAccountAgreementList
> String insertAccountAgreementList(accountAgreementRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final List<AccountAgreementRequest> accountAgreementRequest;

try {
    final response = api.insertAccountAgreementList(accountAgreementRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->insertAccountAgreementList: $e\n');
}
```

### Parameters

| Name                        | Type                                                                  | Description | Notes |
| --------------------------- | --------------------------------------------------------------------- | ----------- | ----- |
| **accountAgreementRequest** | [**List&lt;AccountAgreementRequest&gt;**](AccountAgreementRequest.md) |             |

### Return type

**String**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectAccountAgreement
> AccountAgreementModel selectAccountAgreement(classification, accountId)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final String classification = classification_example;
final String accountId = accountId_example;

try {
    final response = api.selectAccountAgreement(classification, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->selectAccountAgreement: $e\n');
}
```

### Parameters

| Name               | Type       | Description | Notes |
| ------------------ | ---------- | ----------- | ----- |
| **classification** | **String** |             |
| **accountId**      | **String** |             |

### Return type

[**AccountAgreementModel**](AccountAgreementModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectAccountAgreementList
> List<AccountAgreementModel> selectAccountAgreementList(classification, accountId, agreeYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final String classification = classification_example;
final String accountId = accountId_example;
final String agreeYn = agreeYn_example;
final String startCreatedAt = startCreatedAt_example;
final String endCreatedAt = endCreatedAt_example;
final String startUpdatedAt = startUpdatedAt_example;
final String endUpdatedAt = endUpdatedAt_example;

try {
    final response = api.selectAccountAgreementList(classification, accountId, agreeYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->selectAccountAgreementList: $e\n');
}
```

### Parameters

| Name               | Type       | Description | Notes      |
| ------------------ | ---------- | ----------- | ---------- |
| **classification** | **String** |             | [optional] |
| **accountId**      | **String** |             | [optional] |
| **agreeYn**        | **String** |             | [optional] |
| **startCreatedAt** | **String** |             | [optional] |
| **endCreatedAt**   | **String** |             | [optional] |
| **startUpdatedAt** | **String** |             | [optional] |
| **endUpdatedAt**   | **String** |             | [optional] |

### Return type

[**List&lt;AccountAgreementModel&gt;**](AccountAgreementModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateAccountAgreement
> String updateAccountAgreement(accountAgreementRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.accountAgreementApi;
final AccountAgreementRequest accountAgreementRequest;

try {
    final response = api.updateAccountAgreement(accountAgreementRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountAgreementControllerApi->updateAccountAgreement: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description | Notes |
| --------------------------- | --------------------------------------------------------- | ----------- | ----- |
| **accountAgreementRequest** | [**AccountAgreementRequest**](AccountAgreementRequest.md) |             |

### Return type

**String**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
