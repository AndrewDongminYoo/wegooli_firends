import '../../../core/app_export.dart';
import 'listview_item_model.dart';

/// This class defines the variables used in the [view_scheduled_date_scheduler_only_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewScheduledDateSchedulerOnlyModel {
  Rx<List<ListviewItemModel>> listviewItemList =
      Rx(List.generate(3, (index) => ListviewItemModel()));
}
