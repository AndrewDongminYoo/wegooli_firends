// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/datetime_picker_model.dart';
import '/data/models/dropdown_data.dart';

class DatetimePickerController extends GetxController {
  Rx<BookItem>? appointmens;
  DropdownData? choice;
}
