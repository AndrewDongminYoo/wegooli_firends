/// 확장 [MapKeyExtension] 문은 Dart의 [Map] 클래스에 대해 `$type:ForKey`이라는 확장을 정의합니다.
/// 이 확장을 사용하면 [Map] 클래스에서 키에 상응하는 값을 원하는 타입으로 변형해 획득하는 추가 기능을 가질 수 있습니다.
extension MapKeyExtension on Map<dynamic, dynamic> {
  /// 주어진 키에 대한 정수 값을 반환하며 키를 찾을 수 없는 경우 선택적 기본값을 반환
  ///
  /// @param [String] key 검색하려는 정수 값의 키를 나타내는 문자열
  /// @param [int?] defaultValue defaultValue 매개변수는 int? 유형의 선택적 매개변수입니다.
  /// 키를 찾을 수 없거나 키와 관련된 값이 null인 경우 기본값을 제공하는 데 사용됩니다.
  int? intForKey(String key, {int? defaultValue}) {
    final value = this[key];
    if (value is int) {
      return value;
    } else if (value is String) {
      return int.tryParse(value) ?? defaultValue;
    } else {
      return defaultValue;
    }
  }

  /// 주어진 키에 대해 이중 값을 반환하며 키를 찾을 수 없는 경우 선택적 기본값을 반환
  ///
  /// @param [String] key 사전 또는 맵에서 검색하려는 값의 키를 나타내는 문자열
  /// @param [double?] defaultValue defaultValue 매개변수는 double? 유형의 선택적 매개변수입니다.
  /// 키를 찾을 수 없거나 키와 연결된 값이 double 유형이 아닌 경우 반환할 기본값을 지정
  double? doubleForKey(String key, {double? defaultValue}) {
    final value = this[key];
    if (value is double) {
      return value;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is String) {
      return double.tryParse(value) ?? defaultValue;
    } else {
      return defaultValue;
    }
  }

  /// 주어진 키에 대한 문자열 값을 반환하며 키를 찾을 수 없는 경우 선택적 기본값을 반환
  ///
  /// @param [String] key 사전 또는 맵에서 값을 검색하려는 키를 나타내는 문자열
  /// @param [String?] defaultValue defaultValue 매개변수는 문자열에서 키를 찾을 수 없는 경우 반환할 기본값을 지정하는 선택적 매개변수
  String? stringForKey(String key, {String? defaultValue}) {
    final value = this[key];
    if (value is String) {
      return value;
    } else if (value is int) {
      return value.toString();
    } else {
      return defaultValue;
    }
  }

  /// 선택적 기본값과 함께 지정된 키에 대한 부울 값을 반환
  ///
  /// @param [String] key 키-값 쌍의 부울 값에 대한 키를 나타내는 문자열
  /// @param [bool?] defaultValue defaultValue는 bool 유형의 선택적 매개변수입니다. 기본값은 null입니다. 즉, 함수를 호출할 때 defaultValue에
  /// 값이 제공되지 않으면 null로 설정됩니다.
  bool boolForKey(String key, {bool? defaultValue}) {
    final value = this[key];
    if (value is bool) {
      return value;
    } else if (value is String) {
      return value == 'true';
    } else if (value is int) {
      return value == 1;
    } else {
      return defaultValue ?? false;
    }
  }

  /// 주어진 키와, 타입과 관련된 값을 반환하며 키를 찾을 수 없는 경우 선택적 기본값을 반환
  ///
  /// @param [String] key 사전에서 검색하려는 값의 키를 나타내는 문자열
  /// @param [T?] defaultValue defaultValue는 T 유형의 선택적 매개변수입니다.
  /// 주어진 키에 대한 값을 찾을 수 없거나 null인 경우 반환될 기본값을 제공하는 데 사용됩니다.
  T? valueForKey<T>(String key, {T? defaultValue}) {
    final value = this[key];
    if (value is T) {
      return value;
    } else {
      return defaultValue;
    }
  }

  /// 이 객체 속성의 키=값 쌍으로 구성된 URL 쿼리 문자열을 반환합니다.
  /// 유효한 값이 있는 속성 값만 쿼리 문자열에 포함됩니다.
  String toQueryString() {
    final List<String> query = [];
    for (final key in keys) {
      final value = this[key];
      if (value != null) {
        query.add('$key=$value');
      }
    }
    return query.join('&');
  }
}
