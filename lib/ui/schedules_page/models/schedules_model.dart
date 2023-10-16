import '../../../core/app_export.dart';
import 'calendar_item_model.dart';

/// This class defines the variables used in the [schedules_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesModel {
  Rx<List<CalendarItemModel>> calendarItemList =
      Rx(List.generate(7, (index) => CalendarItemModel()));
}
