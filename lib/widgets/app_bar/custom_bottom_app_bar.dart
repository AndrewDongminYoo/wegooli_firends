// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 🌎 Project imports:
import '/lib.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
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
  Widget build(BuildContext context) {
    return Semantics(
      sortKey: const OrdinalSortKey(1),
      container: true,
      label: l10ns.bottomAppBar,
      child: BottomAppBar(
        shape: notchedShape,
        child: IconTheme(
          data: const IconThemeData(color: ColorConstant.fontBlack),
          child: Row(
            children: [
              IconButton(
                icon: Assets.svg.imgCalGray500.svg(),
                selectedIcon: Assets.svg.imgCalOnPrimary.svg(),
                tooltip: l10ns.schedule,
                onPressed: goSharedSchedule,
              ),
              IconButton(
                icon: Assets.svg.imgChatGray500.svg(),
                selectedIcon: Assets.svg.imgChatOnPrimary.svg(),
                tooltip: l10ns.chat,
                onPressed: goChatWithTeam,
              ),
              IconButton(
                icon: Assets.svg.imgKeyGray400.svg(),
                selectedIcon: Assets.svg.imgKeyBlueGray900.svg(),
                tooltip: l10ns.smartKey,
                onPressed: goCarSmartKey,
              ),
              IconButton(
                icon: Assets.svg.imgUser2.svg(),
                selectedIcon: Assets.svg.imgUser3.svg(),
                tooltip: l10ns.myPage,
                onPressed: goMyProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
