# wegooli_friends.api.UserControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                    | HTTP request                    | Description |
| --------------------------------------------------------- | ------------------------------- | ----------- |
| [**checkId**](UserControllerApi.md#checkid)               | **GET** /auth/checkId           |
| [**generateToken**](UserControllerApi.md#generatetoken)   | **POST** /auth/generateToken    | 토큰 발급   |
| [**getUserDetail**](UserControllerApi.md#getuserdetail)   | **POST** /auth/getUserDetail    |
| [**logOut**](UserControllerApi.md#logout)                 | **GET** /auth/logout            |
| [**login**](UserControllerApi.md#login)                   | **POST** /auth/login            |
| [**selectAccount**](UserControllerApi.md#selectaccount)   | **GET** /auth/user/account/{id} |
| [**selectMember**](UserControllerApi.md#selectmember)     | **GET** /auth/user/member/{seq} |
| [**selectUserList**](UserControllerApi.md#selectuserlist) | **GET** /auth/user              |
| [**signOut**](UserControllerApi.md#signout)               | **GET** /auth/signout           |
| [**signup**](UserControllerApi.md#signup)                 | **POST** /auth/signup           |
| [**updateUser**](UserControllerApi.md#updateuser)         | **PUT** /auth/user              |

> checkId
> String checkId(id)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final String id = id_example;

try {
    final response = api.checkId(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->checkId: $e\n');
}
```

### Parameters

| Name   | Type       | Description | Notes |
| ------ | ---------- | ----------- | ----- |
| **id** | **String** |             |

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

> generateToken
> ApiResponseObject generateToken(userDetailsDTO)

토큰 발급

사용자 정보 기반 JWT를 발급함

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final UserDetailsDTO userDetailsDTO;

try {
    final response = api.generateToken(userDetailsDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->generateToken: $e\n');
}
```

### Parameters

| Name               | Type                                    | Description | Notes |
| ------------------ | --------------------------------------- | ----------- | ----- |
| **userDetailsDTO** | [**UserDetailsDTO**](UserDetailsDTO.md) |             |

### Return type

[**ApiResponseObject**](ApiResponseObject.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> getUserDetail
> String getUserDetail(account)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final Account account;

try {
    final response = api.getUserDetail(account);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->getUserDetail: $e\n');
}
```

### Parameters

| Name        | Type                      | Description | Notes |
| ----------- | ------------------------- | ----------- | ----- |
| **account** | [**Account**](Account.md) |             |

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

> logOut
> String logOut()

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();

try {
    final response = api.logOut();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->logOut: $e\n');
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

> login
> String login(id, password)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final String id = id_example;
final String password = password_example;

try {
    final response = api.login(id, password);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->login: $e\n');
}
```

### Parameters

| Name         | Type       | Description | Notes |
| ------------ | ---------- | ----------- | ----- |
| **id**       | **String** |             |
| **password** | **String** |             |

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

> selectAccount
> Account selectAccount(id)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final String id = id_example;

try {
    final response = api.selectAccount(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->selectAccount: $e\n');
}
```

### Parameters

| Name   | Type       | Description | Notes |
| ------ | ---------- | ----------- | ----- |
| **id** | **String** |             |

### Return type

[**Account**](Account.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectMember
> Member selectMember(seq)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final int seq = 56;

try {
    final response = api.selectMember(seq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->selectMember: $e\n');
}
```

### Parameters

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **seq** | **int** |             |

### Return type

[**Member**](Member.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> selectUserList
> List<SelectUserDTO> selectUserList(request)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final SelectUserDTO request;

try {
    final response = api.selectUserList(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->selectUserList: $e\n');
}
```

### Parameters

| Name        | Type                     | Description | Notes |
| ----------- | ------------------------ | ----------- | ----- |
| **request** | [**SelectUserDTO**](.md) |             |

### Return type

[**List&lt;SelectUserDTO&gt;**](SelectUserDTO.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> signOut
> bool signOut(id)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final String id = id_example;

try {
    final response = api.signOut(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->signOut: $e\n');
}
```

### Parameters

| Name   | Type       | Description | Notes |
| ------ | ---------- | ----------- | ----- |
| **id** | **String** |             |

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

> signup
> UserDto signup(userDto)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final UserDto userDto;

try {
    final response = api.signup(userDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->signup: $e\n');
}
```

### Parameters

| Name        | Type                      | Description | Notes |
| ----------- | ------------------------- | ----------- | ----- |
| **userDto** | [**UserDto**](UserDto.md) |             |

### Return type

[**UserDto**](UserDto.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

> updateUser
> bool updateUser(userDto, memberSeq, accountId)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final UserDto userDto;
final int memberSeq = 56;
final String accountId = accountId_example;

try {
    final response = api.updateUser(userDto, memberSeq, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->updateUser: $e\n');
}
```

### Parameters

| Name          | Type                      | Description | Notes |
| ------------- | ------------------------- | ----------- | ----- |
| **userDto**   | [**UserDto**](UserDto.md) |             |
| **memberSeq** | **int**                   |             |
| **accountId** | **String**                |             |

### Return type

**bool**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: "/"

[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
