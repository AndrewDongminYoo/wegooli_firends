// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicators extends StatefulWidget {
  @override
  _SmoothIndicatorsState createState() => _SmoothIndicatorsState();
}

class _SmoothIndicatorsState extends State<SmoothIndicators> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFE0E0E0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Color(0xFF3F51B5)),
                )),
              ),
            ));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 12),
                child: Text(
                  'Worm',
                  style: TextStyle(color: Color(0x89000000)),
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  'Jumping Dot',
                  style: TextStyle(color: Color(0x89000000)),
                ),
              ),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    jumpScale: .7,
                    verticalOffset: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Text(
                  'Scrolling Dots',
                  style: TextStyle(color: Color(0x89000000)),
                ),
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Customizable Effect',
                  style: TextStyle(color: Color(0x89000000)),
                ),
              ),
              Container(
                color: Color(0x66F44336),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 32,
                      height: 12,
                      color: Color(0xFF3F51B5),
                      rotationAngle: 180,
                      verticalOffset: -10,
                      borderRadius: BorderRadius.circular(24),
                      // dotBorder: DotBorder(
                      //   padding: 2,
                      //   width: 2,
                      //   color: Color(0xFF3F51B5),
                      // ),
                    ),
                    dotDecoration: DotDecoration(
                      width: 24,
                      height: 12,
                      color: Color(0xFF9E9E9E),
                      // dotBorder: DotBorder(
                      //   padding: 2,
                      //   width: 2,
                      //   color: Color(0xFF9E9E9E),
                      // ),
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(2),
                      //     topRight: Radius.circular(16),
                      //     bottomLeft: Radius.circular(16),
                      //     bottomRight: Radius.circular(2)),
                      borderRadius: BorderRadius.circular(16),
                      verticalOffset: 0,
                    ),
                    spacing: 6.0,
                    // activeColorOverride: (i) => colors[i],
                    inActiveColorOverride: (i) => colors[i],
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}

final colors = const [
  Color(0xFFF44336),
  Color(0xFF4CAF50),
  Color(0xFF69F0AE),
  Color(0xFFFFD740),
  Color(0xFF2196F3),
  Color(0xFFFFC107),
];