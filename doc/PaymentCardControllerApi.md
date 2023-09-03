# wegooli_friends.api.PaymentCardControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                         | HTTP request                   | Description |
| ------------------------------------------------------------------------------ | ------------------------------ | ----------- |
| [**deletePaymentCard**](PaymentCardControllerApi.md#deletepaymentcard)         | **DELETE** /payment/card/{seq} |
| [**insertPaymentCard**](PaymentCardControllerApi.md#insertpaymentcard)         | **POST** /payment/card         |
| [**selectPaymentCard**](PaymentCardControllerApi.md#selectpaymentcard)         | **GET** /payment/card/{seq}    |
| [**selectPaymentCardList**](PaymentCardControllerApi.md#selectpaymentcardlist) | **GET** /payment/card          |
| [**updatePaymentCard**](PaymentCardControllerApi.md#updatepaymentcard)         | **PUT** /payment/card/{seq}    |

> deletePaymentCard
> String deletePaymentCard(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentCardControllerApi();
final int seq = 56;

try {
    final response = api.deletePaymentCard(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentCardControllerApi->deletePaymentCard: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

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

> insertPaymentCard
> String insertPaymentCard(paymentCardRequest)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentCardControllerApi();
final PaymentCardRequest paymentCardRequest;

try {
    final response = api.insertPaymentCard(paymentCardRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentCardControllerApi->insertPaymentCard: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **paymentCardRequest** | [**PaymentCardRequest**](PaymentCardRequest.md) |             |

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

> selectPaymentCard
> PaymentCardModel selectPaymentCard(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentCardControllerApi();
final int seq = 56;

try {
    final response = api.selectPaymentCard(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentCardControllerApi->selectPaymentCard: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**PaymentCardModel**](PaymentCardModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectPaymentCardList
> List<PaymentCardModel> selectPaymentCardList(memberSeq, cardNumber, defaultYn, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, password, rrn, crn, expirationMonth, expirationYear)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentCardControllerApi();
final int memberSeq = 56;
final String cardNumber = cardNumber_example;
final String defaultYn = defaultYn_example;
final String delYn = delYn_example;
final String startCreatedAt = startCreatedAt_example;
final String endCreatedAt = endCreatedAt_example;
final String startUpdatedAt = startUpdatedAt_example;
final String endUpdatedAt = endUpdatedAt_example;
final String password = password_example;
final String rrn = rrn_example;
final String crn = crn_example;
final String expirationMonth = expirationMonth_example;
final String expirationYear = expirationYear_example;

try {
    final response = api.selectPaymentCardList(memberSeq, cardNumber, defaultYn, delYn, startCreatedAt, endCreatedAt, startUpdatedAt, endUpdatedAt, password, rrn, crn, expirationMonth, expirationYear);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentCardControllerApi->selectPaymentCardList: $e\n');
}
```

### Parameters

| Name                | Type       | Description | Notes      |
| ------------------- | ---------- | ----------- | ---------- |
| **memberSeq**       | **int**    |             | [optional] |
| **cardNumber**      | **String** |             | [optional] |
| **defaultYn**       | **String** |             | [optional] |
| **delYn**           | **String** |             | [optional] |
| **startCreatedAt**  | **String** |             | [optional] |
| **endCreatedAt**    | **String** |             | [optional] |
| **startUpdatedAt**  | **String** |             | [optional] |
| **endUpdatedAt**    | **String** |             | [optional] |
| **password**        | **String** |             | [optional] |
| **rrn**             | **String** |             | [optional] |
| **crn**             | **String** |             | [optional] |
| **expirationMonth** | **String** |             | [optional] |
| **expirationYear**  | **String** |             | [optional] |

### Return type

[**List&lt;PaymentCardModel&gt;**](PaymentCardModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updatePaymentCard
> String updatePaymentCard(paymentCardRequest, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentCardControllerApi();
final PaymentCardRequest paymentCardRequest;
final int seq = 56;

try {
    final response = api.updatePaymentCard(paymentCardRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentCardControllerApi->updatePaymentCard: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **paymentCardRequest** | [**PaymentCardRequest**](PaymentCardRequest.md) |             |
| **seq**                | **int**                                         |             |

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
