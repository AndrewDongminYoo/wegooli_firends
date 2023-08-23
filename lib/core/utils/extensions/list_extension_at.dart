extension ListAtExtension on List {
  /// 목록에서 지정된 [index]에 있는 요소를 반환하거나 index가 목록의 범위를 벗어난 경우 'null'을 반환합니다.
  dynamic at(int index) {
    if (index < 0 || index >= length) {
      return null;
    }
    return this[index];
  }
}
