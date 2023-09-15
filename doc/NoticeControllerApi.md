# wegooli_friends.api.NoticeControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                          | HTTP request                  | Description |
| --------------------------------------------------------------- | ----------------------------- | ----------- |
| [**deleteNotice**](NoticeControllerApi.md#deletenotice)         | **DELETE** /notice/{seq}      |
| [**deletePush**](NoticeControllerApi.md#deletepush)             | **DELETE** /notice/push/{seq} |
| [**deleteSms**](NoticeControllerApi.md#deletesms)               | **DELETE** /notice/sms/{seq}  |
| [**insertNotice**](NoticeControllerApi.md#insertnotice)         | **POST** /notice              |
| [**insertPush**](NoticeControllerApi.md#insertpush)             | **POST** /notice/push         |
| [**insertSms**](NoticeControllerApi.md#insertsms)               | **POST** /notice/sms          |
| [**selectNotice**](NoticeControllerApi.md#selectnotice)         | **GET** /notice/{seq}         |
| [**selectNoticeList**](NoticeControllerApi.md#selectnoticelist) | **GET** /notice               |
| [**selectPush**](NoticeControllerApi.md#selectpush)             | **GET** /notice/push/{seq}    |
| [**selectPushList**](NoticeControllerApi.md#selectpushlist)     | **GET** /notice/push          |
| [**selectSms**](NoticeControllerApi.md#selectsms)               | **GET** /notice/sms/{seq}     |
| [**selectSmsList**](NoticeControllerApi.md#selectsmslist)       | **GET** /notice/sms           |
| [**updateNotice**](NoticeControllerApi.md#updatenotice)         | **PUT** /notice/{seq}         |
| [**updatePush**](NoticeControllerApi.md#updatepush)             | **PUT** /notice/push/{seq}    |
| [**updateSms**](NoticeControllerApi.md#updatesms)               | **PUT** /notice/sms/{seq}     |

> deleteNotice
> int deleteNotice(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.deleteNotice(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->deleteNotice: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

**int**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> deletePush
> int deletePush(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.deletePush(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->deletePush: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

**int**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> deleteSms
> int deleteSms(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.deleteSms(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->deleteSms: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

**int**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> insertNotice
> int insertNotice(insertNoticeRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final InsertNoticeRequest insertNoticeRequest;

try {
    final response = api.insertNotice(insertNoticeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertNotice: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description | Notes |
| ----------------------- | ------------------------------------------------- | ----------- | ----- |
| **insertNoticeRequest** | [**InsertNoticeRequest**](InsertNoticeRequest.md) |             |

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

> insertPush
> int insertPush(insertPushRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final InsertPushRequest insertPushRequest;

try {
    final response = api.insertPush(insertPushRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertPush: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description | Notes |
| --------------------- | --------------------------------------------- | ----------- | ----- |
| **insertPushRequest** | [**InsertPushRequest**](InsertPushRequest.md) |             |

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

> insertSms
> int insertSms(insertSmsRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final InsertSmsRequest insertSmsRequest;

try {
    final response = api.insertSms(insertSmsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertSms: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **insertSmsRequest** | [**InsertSmsRequest**](InsertSmsRequest.md) |             |

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

> selectNotice
> Notice selectNotice(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.selectNotice(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectNotice: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**Notice**](Notice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectNoticeList
> List<Notice> selectNoticeList(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final SelectNoticeRequest request;

try {
    final response = api.selectNoticeList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectNoticeList: $e\n');
}
```

### Parameters

| Name        | Type                           | Description | Notes |
| ----------- | ------------------------------ | ----------- | ----- |
| **request** | [**SelectNoticeRequest**](.md) |             |

### Return type

[**List&lt;Notice&gt;**](Notice.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectPush
> Push selectPush(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.selectPush(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectPush: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**Push**](Push.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectPushList
> List<Push> selectPushList(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final SelectPushRequest request;

try {
    final response = api.selectPushList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectPushList: $e\n');
}
```

### Parameters

| Name        | Type                         | Description | Notes |
| ----------- | ---------------------------- | ----------- | ----- |
| **request** | [**SelectPushRequest**](.md) |             |

### Return type

[**List&lt;Push&gt;**](Push.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectSms
> Sms selectSms(seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final int seq = 56;

try {
    final response = api.selectSms(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectSms: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**Sms**](Sms.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectSmsList
> List<Sms> selectSmsList(request)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final SelectSmsRequest request;

try {
    final response = api.selectSmsList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectSmsList: $e\n');
}
```

### Parameters

| Name        | Type                        | Description | Notes |
| ----------- | --------------------------- | ----------- | ----- |
| **request** | [**SelectSmsRequest**](.md) |             |

### Return type

[**List&lt;Sms&gt;**](Sms.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateNotice
> int updateNotice(updateNoticeRequest, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final UpdateNoticeRequest updateNoticeRequest;
final int seq = 56;

try {
    final response = api.updateNotice(updateNoticeRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updateNotice: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description | Notes |
| ----------------------- | ------------------------------------------------- | ----------- | ----- |
| **updateNoticeRequest** | [**UpdateNoticeRequest**](UpdateNoticeRequest.md) |             |
| **seq**                 | **int**                                           |             |

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

> updatePush
> int updatePush(updatePushRequest, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final UpdatePushRequest updatePushRequest;
final int seq = 56;

try {
    final response = api.updatePush(updatePushRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updatePush: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description | Notes |
| --------------------- | --------------------------------------------- | ----------- | ----- |
| **updatePushRequest** | [**UpdatePushRequest**](UpdatePushRequest.md) |             |
| **seq**               | **int**                                       |             |

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

> updateSms
> int updateSms(updateSmsRequest, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.noticeApi;
final UpdateSmsRequest updateSmsRequest;
final int seq = 56;

try {
    final response = api.updateSms(updateSmsRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updateSms: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **updateSmsRequest** | [**UpdateSmsRequest**](UpdateSmsRequest.md) |             |
| **seq**              | **int**                                     |             |

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
