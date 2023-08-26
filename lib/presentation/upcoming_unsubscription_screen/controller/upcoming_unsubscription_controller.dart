import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/upcoming_unsubscription_screen/models/upcoming_unsubscription_model.dart';

/// A controller class for the UpcomingUnsubscriptionScreen.
///
/// This class manages the state of the UpcomingUnsubscriptionScreen, including the
/// current upcomingUnsubscriptionModelObj
class UpcomingUnsubscriptionController extends GetxController {
  Rx<UpcomingUnsubscriptionModel> upcomingUnsubscriptionModelObj =
      UpcomingUnsubscriptionModel().obs;
}
