# wegooli_friends.api.BoardControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                     | HTTP request                         | Description |
| ---------------------------------------------------------- | ------------------------------------ | ----------- |
| [**deleteAnswer**](BoardControllerApi.md#deleteanswer)     | **DELETE** /board/qna/{seq}/answer   |
| [**deleteQuestion**](BoardControllerApi.md#deletequestion) | **DELETE** /board/qna/{seq}/question |
| [**insertAnswer**](BoardControllerApi.md#insertanswer)     | **POST** /board/qna/{seq}/answer     |
| [**insertQuestion**](BoardControllerApi.md#insertquestion) | **POST** /board/qna/question         |
| [**selectCountQnA**](BoardControllerApi.md#selectcountqna) | **GET** /board/qna/count             |
| [**selectQnA**](BoardControllerApi.md#selectqna)           | **GET** /board/qna/{seq}             |
| [**selectQnAList**](BoardControllerApi.md#selectqnalist)   | **GET** /board/qna                   |
| [**updateAnswer**](BoardControllerApi.md#updateanswer)     | **PUT** /board/qna/{seq}/answer      |
| [**updateQuestion**](BoardControllerApi.md#updatequestion) | **PUT** /board/qna/{seq}/question    |

> deleteAnswer
> bool deleteAnswer(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final int seq = 56;

try {
    final response = api.deleteAnswer(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->deleteAnswer: $e\n');
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

> deleteQuestion
> bool deleteQuestion(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final int seq = 56;

try {
    final response = api.deleteQuestion(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->deleteQuestion: $e\n');
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

> insertAnswer
> int insertAnswer(qnA, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA qnA;
final int seq = 56;

try {
    final response = api.insertAnswer(qnA, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->insertAnswer: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **qnA** | [**QnA**](QnA.md) |             |
| **seq** | **int**           |             |

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

> insertQuestion
> int insertQuestion(qnA)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA qnA;

try {
    final response = api.insertQuestion(qnA);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->insertQuestion: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **qnA** | [**QnA**](QnA.md) |             |

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

> selectCountQnA
> int selectCountQnA(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA request;

try {
    final response = api.selectCountQnA(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->selectCountQnA: $e\n');
}
```

### Parameters

| Name        | Type           | Description | Notes |
| ----------- | -------------- | ----------- | ----- |
| **request** | [**QnA**](.md) |             |

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

> selectQnA
> QnA selectQnA(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final int seq = 56;

try {
    final response = api.selectQnA(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->selectQnA: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**QnA**](QnA.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectQnAList
> List<QnA> selectQnAList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA request;

try {
    final response = api.selectQnAList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->selectQnAList: $e\n');
}
```

### Parameters

| Name        | Type           | Description | Notes |
| ----------- | -------------- | ----------- | ----- |
| **request** | [**QnA**](.md) |             |

### Return type

[**List&lt;QnA&gt;**](QnA.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateAnswer
> int updateAnswer(qnA, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA qnA;
final int seq = 56;

try {
    final response = api.updateAnswer(qnA, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->updateAnswer: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **qnA** | [**QnA**](QnA.md) |             |
| **seq** | **int**           |             |

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

> updateQuestion
> int updateQuestion(qnA, seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getBoardControllerApi();
final QnA qnA;
final int seq = 56;

try {
    final response = api.updateQuestion(qnA, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->updateQuestion: $e\n');
}
```

### Parameters

| Name    | Type              | Description | Notes |
| ------- | ----------------- | ----------- | ----- |
| **qnA** | [**QnA**](QnA.md) |             |
| **seq** | **int**           |             |

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
