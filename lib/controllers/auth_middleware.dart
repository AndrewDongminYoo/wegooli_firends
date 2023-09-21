// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

/// 페이지 미들웨어. 함수 호출 순서:
/// [redirect] ->[onPageCalled] ->[onBindingsStart] ->[onPageBuildStart] ->[onPageBuilt] ->[onPageDispose]
class AuthMiddleware extends GetMiddleware {
  final controller = UserController.to;

  /// 실행할 미들웨어의 순서입니다.
  /// 숫자가 작을수록 먼저 실행됩니다.
  @override
  int? get priority => 3;

  /// 이 함수는 호출된 경로의 페이지가 검색될 때 호출됩니다.
  /// 이 함수는 반환값이 [RouteSettings]인 경우 새 라우트 셋팅으로 리디렉션하며, [null]을 반환하면 리디렉션이 발생하지 않습니다.
  @override
  RouteSettings? redirect(String? route) {
    if (controller.isAuthenticated) {
      return null;
    } else {
      return const RouteSettings(name: AppRoutes.idPwLogin);
    }
  }

  /// 이 함수는 이 페이지가 호출될 때 호출되며 페이지의 내용을 변경하거나 새 페이지를 생성하는 데 사용할 수 있습니다.
  @override
  GetPage<dynamic>? onPageCalled(GetPage<dynamic>? page) {
    final username = goolier.name;
    if (username != null && username.isNotEmpty) {
      print('>>> Page ${page?.name} called');
      print('>>> User "$username" logged-in');
      return page!.copy(parameters: {'user': username});
    }
    return page;
  }

  /// 이 함수는 [Bindings]이 초기화되기 직전에 호출됩니다. 여기에서 이 페이지의 [Bindings]을 변경할 수 있습니다.
  @override
  List<Bindings> onBindingsStart(List<Bindings>? bindings) {
    // 이 함수는 바인딩이 초기화되기 직전에 호출되며, 이 경우 바인딩은 null이 됩니다.
    return [UserAccountBinding()];
  }

  /// 이 함수는 [Bindings]이 초기화된 직후에 호출됩니다.
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('Bindings of $page are ready');
    return page;
  }

  /// 이 함수는 [GetPage.page] 함수가 호출된 직후에 호출되며 함수의 결과를 반환합니다.
  /// 그리고 표시될 위젯을 가져옵니다.
  @override
  Widget onPageBuilt(Widget page) {
    print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    print('PageDisposed');
  }
}
