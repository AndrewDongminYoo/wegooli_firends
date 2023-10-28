/// 확장 [MapKeyExtension] 문은 Dart의 [Map] 클래스에 대해 `$type:ForKey`이라는 확장을 정의합니다.
/// 이 확장을 사용하면 [Map] 클래스에서 키에 상응하는 값을 원하는 타입으로 변형해 획득하는 추가 기능을 가질 수 있습니다.
extension MapKeyExtension on Map<dynamic, dynamic> {
  /// 주어진 키와, 타입과 관련된 값을 반환하며 키를 찾을 수 없는 경우 선택적 기본값을 반환
  ///
  /// @param [String] key 사전에서 검색하려는 값의 키를 나타내는 문자열
  /// @param [R] defaultValue defaultValue는 R 유형의 매개변수입니다.
  /// 주어진 키에 대한 값을 찾을 수 없거나 null인 경우 반환될 기본값을 제공하는 데 사용됩니다.
  R getOrDefault<T, R>(T key, R defaultValue) {
    final value = this[key];
    if (value is R) {
      return value;
    } else {
      return defaultValue;
    }
  }

  /// 이 객체 속성의 키=값 쌍으로 구성된 URL 쿼리 문자열을 반환합니다.
  /// 유효한 값이 있는 속성 값만 쿼리 문자열에 포함됩니다.
  String toQueryString() {
    final query = <String>[];
    for (final key in keys) {
      final value = this[key];
      if (value != null) {
        query.add('$key=$value');
      }
    }
    return query.join('&');
  }
}
