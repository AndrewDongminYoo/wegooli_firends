# wegooli_friends.api.UserControllerApi

## Load the API package

```dart
import 'package:wegooli_friends/api.dart';
```

All URIs are relative to *http://13.209.6.245:8089*

| Method                                                  | HTTP request                 | Description |
| ------------------------------------------------------- | ---------------------------- | ----------- |
| [**checkId**](UserControllerApi.md#checkid)             | **GET** /auth/checkId        |
| [**generateToken**](UserControllerApi.md#generatetoken) | **POST** /auth/generateToken | 토큰 발급   |
| [**getUserDetail**](UserControllerApi.md#getuserdetail) | **POST** /auth/getUserDetail |
| [**logOut**](UserControllerApi.md#logout)               | **GET** /auth/logout         |
| [**login**](UserControllerApi.md#login)                 | **POST** /auth/login         |
| [**signout**](UserControllerApi.md#signout)             | **GET** /auth/signout        |
| [**signup**](UserControllerApi.md#signup)               | **POST** /auth/signup        |

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
final UserDetailsDTO userDetailsDTO = ;

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
final Account account = ;

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

> signout
> String signout(id)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final String id = id_example;

try {
    final response = api.signout(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->signout: $e\n');
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

> signup
> String signup(userDTO)

### Example

```dart
import 'package:wegooli_friends/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = WegooliFriends().getUserControllerApi();
final UserDTO userDTO = ;

try {
    final response = api.signup(userDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->signup: $e\n');
}
```

### Parameters

| Name        | Type                      | Description | Notes |
| ----------- | ------------------------- | ----------- | ----- |
| **userDTO** | [**UserDTO**](UserDTO.md) |             |

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
