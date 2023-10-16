import '../../../core/app_export.dart';
import 'calendar1_item_model.dart';

/// This class defines the variables used in the [schedules_team_is_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesTeamIsFullModel {
  Rx<List<Calendar1ItemModel>> calendar1ItemList =
      Rx(List.generate(7, (index) => Calendar1ItemModel()));
}
