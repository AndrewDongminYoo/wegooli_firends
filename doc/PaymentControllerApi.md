# wegooli_friends.api.PaymentControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                           | HTTP request                                | Description |
| ---------------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**cancelPayment**](PaymentControllerApi.md#cancelpayment)       | **POST** /payments/cancel/{paymentKey}      |
| [**createBillingKey**](PaymentControllerApi.md#createbillingkey) | **POST** /payments/billing/card/{accountId} |
| [**getPayment**](PaymentControllerApi.md#getpayment)             | **GET** /payments/{paymentKey}              |
| [**getPaymentList**](PaymentControllerApi.md#getpaymentlist)     | **GET** /payments                           |
| [**payByBillingKey**](PaymentControllerApi.md#paybybillingkey)   | **POST** /payments/billing/{billingKey}     |
| [**start**](PaymentControllerApi.md#start)                       | **GET** /payments/start                     |

> cancelPayment
> String cancelPayment(paymentKey, cancelRequestModel)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();
final String paymentKey = paymentKey_example;
final CancelRequestModel cancelRequestModel;

try {
    final response = api.cancelPayment(paymentKey, cancelRequestModel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->cancelPayment: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **paymentKey**         | **String**                                      |             |
| **cancelRequestModel** | [**CancelRequestModel**](CancelRequestModel.md) |             |

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

> createBillingKey
> String createBillingKey(accountId, billingKeyRequestModel)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();
final String accountId = accountId_example;
final BillingKeyRequestModel billingKeyRequestModel;

try {
    final response = api.createBillingKey(accountId, billingKeyRequestModel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->createBillingKey: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description | Notes |
| -------------------------- | ------------------------------------------------------- | ----------- | ----- |
| **accountId**              | **String**                                              |             |
| **billingKeyRequestModel** | [**BillingKeyRequestModel**](BillingKeyRequestModel.md) |             |

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

> getPayment
> PaymentModel getPayment(paymentKey)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();
final String paymentKey = paymentKey_example;

try {
    final response = api.getPayment(paymentKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->getPayment: $e\n');
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **paymentKey** | **String** |             |

### Return type

[**PaymentModel**](PaymentModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> getPaymentList
> BuiltList<PaymentModel> getPaymentList(paymentKey, status, lastTransactionKey, orderId, orderName, startRequestedAt, endRequestedAt)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();
final String paymentKey = paymentKey_example;
final String status = status_example;
final String lastTransactionKey = lastTransactionKey_example;
final String orderId = orderId_example;
final String orderName = orderName_example;
final String startRequestedAt = startRequestedAt_example;
final String endRequestedAt = endRequestedAt_example;

try {
    final response = api.getPaymentList(paymentKey, status, lastTransactionKey, orderId, orderName, startRequestedAt, endRequestedAt);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->getPaymentList: $e\n');
}
```

### Parameters

| Name                   | Type       | Description | Notes      |
| ---------------------- | ---------- | ----------- | ---------- |
| **paymentKey**         | **String** |             | [optional] |
| **status**             | **String** |             | [optional] |
| **lastTransactionKey** | **String** |             | [optional] |
| **orderId**            | **String** |             | [optional] |
| **orderName**          | **String** |             | [optional] |
| **startRequestedAt**   | **String** |             | [optional] |
| **endRequestedAt**     | **String** |             | [optional] |

### Return type

[**BuiltList&lt;PaymentModel&gt;**](PaymentModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> payByBillingKey
> String payByBillingKey(billingKey, payBillingRequestModel)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();
final String billingKey = billingKey_example;
final PayBillingRequestModel payBillingRequestModel;

try {
    final response = api.payByBillingKey(billingKey, payBillingRequestModel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->payByBillingKey: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description | Notes |
| -------------------------- | ------------------------------------------------------- | ----------- | ----- |
| **billingKey**             | **String**                                              |             |
| **payBillingRequestModel** | [**PayBillingRequestModel**](PayBillingRequestModel.md) |             |

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

> start
> String start()

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getPaymentControllerApi();

try {
    final response = api.start();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentControllerApi->start: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

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
