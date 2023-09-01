# wegooli_friends.api.NoticeControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
> int insertNotice(notice)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Notice notice;

try {
    final response = api.insertNotice(notice);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertNotice: $e\n');
}
```

### Parameters

| Name       | Type                    | Description | Notes |
| ---------- | ----------------------- | ----------- | ----- |
| **notice** | [**Notice**](Notice.md) |             |

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
> int insertPush(push)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Push push;

try {
    final response = api.insertPush(push);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertPush: $e\n');
}
```

### Parameters

| Name     | Type                | Description | Notes |
| -------- | ------------------- | ----------- | ----- |
| **push** | [**Push**](Push.md) |             |

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
> int insertSms(sms)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Sms sms;

try {
    final response = api.insertSms(sms);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->insertSms: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **sms** | [**Sms**](Sms.md) |             |

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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
> BuiltList<Notice> selectNoticeList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Notice request;

try {
    final response = api.selectNoticeList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectNoticeList: $e\n');
}
```

### Parameters

| Name        | Type              | Description | Notes |
| ----------- | ----------------- | ----------- | ----- |
| **request** | [**Notice**](.md) |             |

### Return type

[**BuiltList&lt;Notice&gt;**](Notice.md)

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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
> BuiltList<Push> selectPushList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Push request;

try {
    final response = api.selectPushList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectPushList: $e\n');
}
```

### Parameters

| Name        | Type            | Description | Notes |
| ----------- | --------------- | ----------- | ----- |
| **request** | [**Push**](.md) |             |

### Return type

[**BuiltList&lt;Push&gt;**](Push.md)

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
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
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
> BuiltList<Sms> selectSmsList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final Sms request;

try {
    final response = api.selectSmsList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->selectSmsList: $e\n');
}
```

### Parameters

| Name        | Type           | Description | Notes |
| ----------- | -------------- | ----------- | ----- |
| **request** | [**Sms**](.md) |             |

### Return type

[**BuiltList&lt;Sms&gt;**](Sms.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateNotice
> int updateNotice(seq, notice)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final int seq = 56;
final Notice notice;

try {
    final response = api.updateNotice(seq, notice);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updateNotice: $e\n');
}
```

### Parameters

| Name       | Type                    | Description | Notes |
| ---------- | ----------------------- | ----------- | ----- |
| **seq**    | **int**                 |             |
| **notice** | [**Notice**](Notice.md) |             |

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
> int updatePush(seq, push)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final int seq = 56;
final Push push;

try {
    final response = api.updatePush(seq, push);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updatePush: $e\n');
}
```

### Parameters

| Name     | Type                | Description | Notes |
| -------- | ------------------- | ----------- | ----- |
| **seq**  | **int**             |             |
| **push** | [**Push**](Push.md) |             |

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
> int updateSms(seq, sms)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getNoticeControllerApi();
final int seq = 56;
final Sms sms;

try {
    final response = api.updateSms(seq, sms);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NoticeControllerApi->updateSms: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **seq** | **int**           |             |
| **sms** | [**Sms**](Sms.md) |             |

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
