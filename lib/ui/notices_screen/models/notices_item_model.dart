import '../../../core/app_export.dart';

/// This class is used in the [notices_item_widget] screen.
class NoticesItemModel {
  NoticesItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
