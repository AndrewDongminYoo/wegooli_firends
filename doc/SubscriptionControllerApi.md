# wegooli_friends.api.SubscriptionControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                                            | HTTP request                                | Description |
| --------------------------------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**selectSubscriptionInfo**](SubscriptionControllerApi.md#selectsubscriptioninfo) | **GET** /subscription/{accountId}/{teamSeq} |
| [**submitWithdrawal**](SubscriptionControllerApi.md#submitwithdrawal)             | **PUT** /subscription                       |

> selectSubscriptionInfo
> List<SubscriptionModel> selectSubscriptionInfo(accountId, teamSeq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.subscriptionApi;
final String accountId = accountId_example;
final int teamSeq = 56;

try {
    final response = api.selectSubscriptionInfo(accountId, teamSeq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SubscriptionControllerApi->selectSubscriptionInfo: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **accountId** | **String** |             |
| **teamSeq**   | **int**    |             |

### Return type

[**List&lt;SubscriptionModel&gt;**](SubscriptionModel.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> submitWithdrawal
> String submitWithdrawal(submitWithdrawalModel)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.subscriptionApi;
final SubmitWithdrawalModel submitWithdrawalModel;

try {
    final response = api.submitWithdrawal(submitWithdrawalModel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SubscriptionControllerApi->submitWithdrawal: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description | Notes |
| ------------------------- | ----------------------------------------------------- | ----------- | ----- |
| **submitWithdrawalModel** | [**SubmitWithdrawalModel**](SubmitWithdrawalModel.md) |             |

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
