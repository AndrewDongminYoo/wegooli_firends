// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

/// This class defines the variables used in the [register_zip_code],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterZipCodeModel {
  Rx<String> postalCode = ''.obs;
  Rx<String> defaultAddress = ''.obs;
  Rx<String> detailedAddressA = ''.obs;
  Rx<String> detailedAddressB = ''.obs;
}
