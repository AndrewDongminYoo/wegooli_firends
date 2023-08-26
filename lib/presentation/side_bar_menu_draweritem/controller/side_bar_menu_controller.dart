import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/side_bar_menu_draweritem/models/side_bar_menu_model.dart';

/// A controller class for the SideBarMenuDraweritem.
///
/// This class manages the state of the SideBarMenuDraweritem, including the
/// current sideBarMenuModelObj
class SideBarMenuController extends GetxController {
  Rx<SideBarMenuModel> sideBarMenuModelObj = SideBarMenuModel().obs;
}
