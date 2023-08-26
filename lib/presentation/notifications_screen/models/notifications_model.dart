import 'package:get/get.dart';
import 'noticeboard_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<NoticeboardItemModel>> noticeboardItemList =
      Rx(List.generate(10, (index) => NoticeboardItemModel()));
}
