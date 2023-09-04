/// 코드는 Dart의 `List` 클래스에 `ListAtExtension`이라는 확장을 정의하고 있습니다.
/// 이 확장은 `List` 클래스에 `at`이라는 새로운 메서드를 추가하고 있습니다.
extension ListAtExtension on List<dynamic> {
  /// 목록에서 지정된 [index]에 있는 요소를 반환하거나 index가 목록의 범위를 벗어난 경우 'null'을 반환합니다.
  dynamic at(int index) {
    if (index < 0 || index >= length) {
      return null;
    }
    return this[index];
  }
}
