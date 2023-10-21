// 📦 Package imports:
import 'package:collection/collection.dart';

/// List의 주요한 메소드들의 리턴 타입을 [Iterable<T>]에서 [List<T>]로 변경하는 확장.
/// [toList] 메소드에서의 [growable] 매개 변수 기본값은 `true`이지만 반환되는 리스트의 불변성을 보장하기 위해 `false`로 제한합니다.
extension ListExtensions<T> on Iterable<T> {
  List<R> mapTo<R>(R Function(T element) toElement) {
    return map(toElement).toList(growable: false);
  }

  List<T> whereTo(bool Function(T element) test) {
    return where(test).toList(growable: false);
  }

  List<R> mapIndexedTo<R>(R Function(int index, T element) convert) {
    return mapIndexed(convert).toList(growable: false);
  }
}
