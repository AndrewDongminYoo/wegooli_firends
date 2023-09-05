// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    required this.floatingActionButtonLocation,
    this.notchedShape,
  });

  final FloatingActionButtonLocation floatingActionButtonLocation;
  final NotchedShape? notchedShape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      sortKey: const OrdinalSortKey(1),
      container: true,
      label: l10ns.bottomAppBar,
      child: BottomAppBar(
        shape: widget.notchedShape,
        child: IconTheme(
          data: IconThemeData(color: theme.colorScheme.onPrimary),
          child: Row(
            children: [
              IconButton(
                icon: Assets.svg.imgCalOnPrimary.svg(),
                selectedIcon: Assets.svg.imgCalOnPrimary.svg(),
                tooltip: l10ns.schedule,
                onPressed: () => Get.toNamed(AppRoutes.sharedSchedule),
              ),
              IconButton(
                icon: Assets.svg.imgChatGray400.svg(),
                selectedIcon: Assets.svg.imgChatGray400.svg(),
                tooltip: l10ns.chat,
                onPressed: () => Get.toNamed(AppRoutes.chatWithTeam),
              ),
              IconButton(
                icon: Assets.svg.imgKeyGray400.svg(),
                selectedIcon: Assets.svg.imgKeyGray400.svg(),
                tooltip: l10ns.smartKey,
                onPressed: () => Get.toNamed(AppRoutes.carSmartKey),
              ),
              IconButton(
                icon: Assets.svg.imgUser2.svg(),
                selectedIcon: Assets.svg.imgUser2.svg(),
                tooltip: l10ns.myPage,
                onPressed: () => Get.toNamed(AppRoutes.myProfile),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
