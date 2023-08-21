// 📦 Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/core.dart';

/// ApiClient 클래스는 API 요청을 만들기 위한 클라이언트를 나타내는 GetConnect의 하위 클래스입니다.
class ApiClient extends GetConnect {
  @override
  get baseUrl => OpenAPIConfig().baseUrl;

  // User
  static const String login = "/api/auth/login";
  static const String refresh = "/api/auth/refresh";
  static const String signup = "/api/auth/register/form";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);

    httpClient.addRequestModifier<dynamic>((request) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var cookie = prefs.getString('Cookie').toString();
      Map<String, String> headers = {
        "Cookie": cookie,
        "content-type": "application/json"
      };
      request.headers.addAll(headers);
      return request;
    });
  }

  /// 메서드는 인터넷 연결을 확인하는 데 사용할 수 있습니다.
  /// 인터넷 연결 가능 여부에 따라 [bool]을 반환합니다.
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// 응답 상태 코드가 200에서 299 사이인 경우 `true`입니다.
  ///
  /// 사용자는 API 응답을 기반으로 사용자 지정 논리를 사용하여 이 메서드를 수정할 수 있습니다.
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future fetchEmail(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      String? email = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('$baseUrl/store/auth/$email', headers: headers);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future deleteAuth(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.delete('$baseUrl/store/auth');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchAuth(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get('$baseUrl/store/auth');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createMe(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post('$baseUrl/store/customers/me',
          headers: headers, body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createPaymentSession(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {},
      String? cartId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$baseUrl/store/carts/$cartId/payment-sessions',
          body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createLineItems(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {},
      String? cartId = '',
      String? lineItems = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$baseUrl/store/carts/$cartId/line-items/$lineItems',
          body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createComplete(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {},
      String? cartId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .post('$baseUrl/store/carts/$cartId/complete', body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future deleteAddressId(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      String? addressId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .delete('$baseUrl/store/customers/me/addresses/$addressId');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchCustomerId(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      String? customerId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('$baseUrl/store/customer-cart/$customerId');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createAddresses(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .post('$baseUrl/store/customers/me/addresses', body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchCartId(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      String? cartId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get('$baseUrl/store/carts/$cartId',
          headers: headers);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future deleteLineItems(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      String? cartId = '',
      String? lineItems = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient
          .delete('$baseUrl/store/carts/$cartId/line-items/$lineItems');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createCarts(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.post('$baseUrl/store/carts', body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createCartIdLineItems(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {},
      String? cartId = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$baseUrl/store/carts/$cartId/line-items',
          headers: headers,
          body: requestData);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createStoreAuth(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map requestData = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.post('$baseUrl/store/auth', body: requestData);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(response.headers!['set-cookie'].toString());
      print(prefs.getString('Cookie'));
      // prefs.setString('Cookie', response.headers!['set-cookie'].toString());
      // prefs.setString('Cookie', response.headers?['set-cookie'] ?? '');
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createCustomers(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post('$baseUrl/store/customers',
          headers: headers, body: requestData);
      print(response);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('Cookie', response.headers!['set-cookie'].toString());
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchId(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      String? id = ''}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('$baseUrl/store/products/$id', headers: headers);
      print(response);
      LoadingDialog.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchProducts(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    LoadingDialog.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('$baseUrl/store/products', headers: headers);
      LoadingDialog.hideProgressDialog();
      print(response);
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error, stackTrace) {
      LoadingDialog.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }
}

extension ApiExtension on String {
  String withParam(List<String> args) {
    String tmp = this;
    for (var arg in args) {
      tmp = tmp.replaceFirst(RegExp(r'(:\w+)'), arg);
    }
    return tmp;
  }
}
