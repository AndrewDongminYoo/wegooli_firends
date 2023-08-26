import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/no_contents_screen/models/no_contents_model.dart';

/// A controller class for the NoContentsScreen.
///
/// This class manages the state of the NoContentsScreen, including the
/// current noContentsModelObj
class NoContentsController extends GetxController {
  Rx<NoContentsModel> noContentsModelObj = NoContentsModel().obs;
}
