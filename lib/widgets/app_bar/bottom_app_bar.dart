// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';

/// `BottomAppBarDemo` 클래스는 플로팅 작업 버튼의 가시성, 하단 앱 바 노치의 가시성, 플로팅 작업 버튼의 위치 등 하단 앱 바 데모의 상태와 UI를 관리하는 상태 저장 위젯입니다.
class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo>
    with RestorationMixin {
  /// 이 프로퍼티의 값을 복원할 수 있는 복원 데이터가 없는 경우 프로퍼티는 제공된 defaultValue로 초기화됩니다.
  /// 값을 저장하고 복원하는 방법을 알고 있는 [복원 가능한 프로퍼티]입니다.
  /// 이 프로퍼티의 현재 [값]은 복원 데이터에 저장됩니다. 상태 복원 중에 프로퍼티는 복원 대상 복원 데이터가 수집될 때의 값으로 복원됩니다.
  /// 복원 데이터를 사용할 수 없는 경우 [value]는 생성자에 지정된 defaultValue로 초기화됩니다.
  final RestorableBool _showFab = RestorableBool(true);
  final RestorableBool _showNotch = RestorableBool(true);
  final RestorableInt _currentFabLocation = RestorableInt(0);

  @override
  /// `restorationId` [getter] 메소드는 `BottomAppBarDemo` 위젯의 상태 복원을 위한 고유 식별자를 제공하는 데 사용됩니다.
  /// 이 식별자는 앱을 닫았다가 다시 열 때 위젯의 상태를 저장하고 복원하는 데 사용됩니다.
  /// 고유한 복원 ID를 제공함으로써 프레임워크는 위젯이 제거되었다가 위젯 트리에 다시 추가된 경우에도 위젯의 상태를 올바르게 복원할 수 있습니다.
  String get restorationId => 'bottom_app_bar_demo';

  @override
  /// 이 함수는 복원 버킷과 초기 복원인지 여부를 나타내는 플래그를 사용하여 객체의 상태를 복원
  ///
  /// Args:
  ///   `oldBucket` ([RestorationBucket]): `oldBucket` 매개변수는 [RestorationBucket?] 유형
  ///   `initialRestore` ([bool]): `initialRestore` 매개변수는 이것이 상태의 초기 복원인지 여부를 나타내는 부울 값
  ///     초기 복원 여부에 따라 다양한 작업이나 논리를 수행하는 데 사용할 수 있습니다.
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_showFab, 'show_fab');
    registerForRestoration(_showNotch, 'show_notch');
    registerForRestoration(_currentFabLocation, 'fab_location');
  }

  @override
  void dispose() {
    _showFab.dispose();
    _showNotch.dispose();
    _currentFabLocation.dispose();
    super.dispose();
  }

  /// 코드는 `FloatingActionButtonLocation` 열거형의 4개 값을 포함하는 `_fabLocations`라는 정적 상수 목록.
  /// 이러한 값은 하단 앱 바에 있는 FAB(플로팅 작업 버튼)의 다양한 위치를 나타냄.
  /// 위치는 `endDocked`, `centerDocked`, `endFloat` 및 `centerFloat`.
  /// 이 목록은 나중에 라디오 버튼에서 선택한 값을 기반으로 FAB의 현재 위치를 결정하는 데 사용됨.
  /// [FloatingActionButtonLocation]은 열거형이 아니므로 상태 복원을 위해 선택한 [FloatingActionButtonLocation]의 인덱스가 사용됨.
  static const List<FloatingActionButtonLocation> _fabLocations = [
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.centerFloat,
  ];

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch.value = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab.value = value;
    });
  }

  void _onFabLocationChanged(int? value) {
    setState(() {
      _currentFabLocation.value = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = Localized.of(context)!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.bottomAppBarTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
            title: Text(
              localizations.floatingButtonTitle,
            ),
            value: _showFab.value,
            onChanged: _onShowFabChanged,
          ),
          SwitchListTile(
            title: Text(localizations.bottomAppBarNotch),
            value: _showNotch.value,
            onChanged: _onShowNotchChanged,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(localizations.bottomAppBarPosition),
          ),
          RadioListTile<int>(
            title: Text(
              localizations.bottomAppBarPositionDockedEnd,
            ),
            value: 0,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              localizations.bottomAppBarPositionDockedCenter,
            ),
            value: 1,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              localizations.bottomAppBarPositionFloatingEnd,
            ),
            value: 2,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              localizations.bottomAppBarPositionFloatingCenter,
            ),
            value: 3,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
        ],
      ),
      floatingActionButton: _showFab.value
          ? Semantics(
              container: true,
              sortKey: const OrdinalSortKey(0),
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: localizations.buttonTextCreate,
                child: const Icon(Icons.add),
              ),
            )
          : null,
      floatingActionButtonLocation: _fabLocations[_currentFabLocation.value],
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocations[_currentFabLocation.value],
        shape: _showNotch.value ? const CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    required this.fabLocation,
    this.shape,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = Localized.of(context)!;
    return Semantics(
      sortKey: const OrdinalSortKey(1),
      container: true,
      label: localizations.bottomAppBar,
      child: BottomAppBar(
        shape: shape,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: [
              IconButton(
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              if (centerLocations.contains(fabLocation)) const Spacer(),
              IconButton(
                tooltip: localizations.starterAppTooltipSearch,
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                tooltip: localizations.starterAppTooltipFavorite,
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

