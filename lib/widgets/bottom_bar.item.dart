// 🌎 Project imports:
import 'bottom_bar.dart';

class BottomNavBarModel {
  BottomNavBarModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;
  String? title;

  BottomBarEnum type;
}
