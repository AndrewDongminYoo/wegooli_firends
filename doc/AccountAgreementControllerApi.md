# wegooli_friends.api.AccountAgreementControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                                        | HTTP request                                               | Description |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ----------- |
| [**deleteAccountAgreement**](AccountAgreementControllerApi.md#deleteaccountagreement)         | **DELETE** /account/agreement/{classification}/{accountId} |
| [**insertAccountAgreement**](AccountAgreementControllerApi.md#insertaccountagreement)         | **POST** /account/agreement                                |
| [**selectAccountAgreement**](AccountAgreementControllerApi.md#selectaccountagreement)         | **GET** /account/agreement/{classification}/{accountId}    |
| [**selectAccountAgreementList**](AccountAgreementControllerApi.md#selectaccountagreementlist) | **GET** /account/agreement                                 |
| [**updateAccountAgreement**](AccountAgreementControllerApi.md#updateaccountagreement)         | **PUT** /account/agreement                                 |

> deleteAccountAgreement
> String deleteAccountAgreement(classification, accountId)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getAccountAgreementControllerApi();
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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getAccountAgreementControllerApi();
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

> selectAccountAgreement
> AccountAgreementModel selectAccountAgreement(classification, accountId)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getAccountAgreementControllerApi();
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
> BuiltList<AccountAgreementModel> selectAccountAgreementList(classification, accountId, agreeYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getAccountAgreementControllerApi();
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

[**BuiltList&lt;AccountAgreementModel&gt;**](AccountAgreementModel.md)

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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getAccountAgreementControllerApi();
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
