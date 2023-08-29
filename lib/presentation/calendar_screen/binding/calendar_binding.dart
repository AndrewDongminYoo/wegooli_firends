import '../controller/calendar_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CalendarScreen.
///
/// This class ensures that the CalendarController is created when the
/// CalendarScreen is first loaded.
class CalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarController());
  }
}
