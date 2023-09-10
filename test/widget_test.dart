// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';
import 'package:wegooli_friends/main.dart';

void main() {
  test('initializes Get bindings', () {
    // Act
    main();

    // Assert
    expect(Get.isPrepared<PrefUtils>(), true);
  });

  test('configures orientations', () async {
    // Arrange
    TestWidgetsFlutterBinding.ensureInitialized();

    // Act
    main();

    // Assert
    expect(
      MediaQueryData.fromView(
        TestWidgetsFlutterBinding.instance.platformDispatcher.views.first).orientation,
      DeviceOrientation.portraitUp,
    );
  });

  test('runs app', () async {
    // Arrange
    TestWidgetsFlutterBinding.ensureInitialized();

    // Act
    main();

    // Assert
    expect(Get.isRegistered<MyApp>(), true);
  });
}
