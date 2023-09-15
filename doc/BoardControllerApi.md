# wegooli_friends.api.BoardControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/lib.dart';
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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
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
> int insertAnswer(body, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final String body = body_example;
final int seq = 56;

try {
    final response = api.insertAnswer(body, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->insertAnswer: $e\n');
}
```

### Parameters

| Name     | Type       | Description | Notes |
| -------- | ---------- | ----------- | ----- |
| **body** | **String** |             |
| **seq**  | **int**    |             |

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
> int insertQuestion(questionRequest)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final QuestionRequest questionRequest;

try {
    final response = api.insertQuestion(questionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->insertQuestion: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **questionRequest** | [**QuestionRequest**](QuestionRequest.md) |             |

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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final SelectQnARequest request;

try {
    final response = api.selectCountQnA(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->selectCountQnA: $e\n');
}
```

### Parameters

| Name        | Type                        | Description | Notes |
| ----------- | --------------------------- | ----------- | ----- |
| **request** | [**SelectQnARequest**](.md) |             |

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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
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
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final SelectQnARequest request;

try {
    final response = api.selectQnAList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->selectQnAList: $e\n');
}
```

### Parameters

| Name        | Type                        | Description | Notes |
| ----------- | --------------------------- | ----------- | ----- |
| **request** | [**SelectQnARequest**](.md) |             |

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
> int updateAnswer(body, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final String body = body_example;
final int seq = 56;

try {
    final response = api.updateAnswer(body, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->updateAnswer: $e\n');
}
```

### Parameters

| Name     | Type       | Description | Notes |
| -------- | ---------- | ----------- | ----- |
| **body** | **String** |             |
| **seq**  | **int**    |             |

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
> int updateQuestion(questionRequest, seq)

### Example

```dart
import 'package:wegooli_friends/lib.dart';

final api = wegooli.boardApi;
final QuestionRequest questionRequest;
final int seq = 56;

try {
    final response = api.updateQuestion(questionRequest, seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BoardControllerApi->updateQuestion: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **questionRequest** | [**QuestionRequest**](QuestionRequest.md) |             |
| **seq**             | **int**                                   |             |

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
