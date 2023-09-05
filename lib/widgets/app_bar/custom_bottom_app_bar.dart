// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                tooltip: l10ns.openAppDrawerTooltip,
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              if (CustomBottomAppBar.centerLocations
                  .contains(widget.floatingActionButtonLocation))
                const Spacer(),
              IconButton(
                tooltip: l10ns.starterAppTooltipSearch,
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                tooltip: l10ns.starterAppTooltipFavorite,
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
