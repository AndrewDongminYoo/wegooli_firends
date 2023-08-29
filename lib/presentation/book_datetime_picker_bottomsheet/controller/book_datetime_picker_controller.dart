import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/book_datetime_picker_bottomsheet/models/book_datetime_picker_model.dart';

/// A controller class for the BookDatetimePickerBottomsheet.
///
/// This class manages the state of the BookDatetimePickerBottomsheet, including the
/// current bookDatetimePickerModelObj
class BookDatetimePickerController extends GetxController {
  Rx<BookDatetimePickerModel> bookDatetimePickerModelObj =
      BookDatetimePickerModel().obs;
}
