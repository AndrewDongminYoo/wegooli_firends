// 🌎 Project imports:
import '/core/utils/list_extensions.dart';

List<double?> dataToDouble(List<dynamic> data) {
  if (data.isEmpty) {
    return [];
  }
  if (data.first is double) {
    return data.mapTo((d) => d as double);
  }
  if (data.first is int) {
    return data.mapTo((d) => (d as int).toDouble());
  }
  if (data.first is DateTime) {
    return data.mapTo((d) => (d as DateTime).millisecondsSinceEpoch.toDouble());
  }
  if (data.first is String) {
    // First try to parse as doubles
    if (double.tryParse(data.first as String) != null) {
      return data.mapTo((d) => double.tryParse(d as String));
    }
    if (int.tryParse(data.first as String) != null) {
      return data.mapTo((d) => int.tryParse(d as String)?.toDouble());
    }
    if (DateTime.tryParse(data.first as String) != null) {
      return data.mapTo((d) =>
          DateTime.tryParse(d as String)?.millisecondsSinceEpoch.toDouble());
    }
  }
  return [];
}
