---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/smooth_page_indicator
author:
---

# smooth_page_indicator | Flutter Package

## Customizable animated page indicator with a set of built-in effects

[![MIT License](https://img.shields.io/badge/License-MIT-green)](https://img.shields.io/badge/License-MIT-green)
[![stars](https://img.shields.io/github/stars/Milad-Akarie/smooth_page_indicator?style=flat&logo=github&colorB=green&label=stars)](https://github.com/Milad-Akarie/smooth_page_indicator/stargazers)
[![pub version](https://img.shields.io/pub/v/smooth_page_indicator.svg)](https://pub.dev/packages/smooth_page_indicator/versions/1.0.0)
[![Buy Me A Coffee](https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png)](https://www.buymeacoffee.com/miladakarie)
![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/smooth_page_indicator_demo_1.gif?raw=true)

## infinite Loop support

![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/smooth_page_indicator_demo_loop.gif?raw=true)

## Scrolling dots effect

![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/smooth_page_indicator_demo_4.gif?raw=true)

| Effect                                 | Preview                                                                                                                                     |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Worm                                   | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/worm.gif?raw=true)                            |
| Worm style = WormStyle.thin            | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/worm-thin.gif?raw=true)                       |
| Worm style = WormStyle.underground     | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/worm_underground_demo.gif?raw=true)           |
| Worm style = WormStyle.thinUnderground | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/thin_worm_underground_demo.gif?raw=true)      |
| Expanding Dots                         | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/expanding-dot.gif?raw=true)                   |
| Jumping dot                            | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/jumping-dot.gif?raw=true)                     |
| Jumping dot with vertical offset       | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/jumping-dot-effect-with-voffset.gif?raw=true) |
| Scrolling Dots                         | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/scrolling-dots-2.gif?raw=true)                |
| Slide                                  | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/slide.gif?raw=true)                           |
| Slide style = SlideStyle.slideUnder    | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/slide_under_demo.gif?raw=true)                |
| Scale                                  | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/scale.gif?raw=true)                           |
| Swap                                   | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/swap.gif?raw=true)                            |
| Swap type = SwapType.yRotation         | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/swap-yrotation.gif?raw=true)                  |
| Color Transition                       | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/color-transition.gif?raw=true)                |
| Customizable demo-1                    | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/custimizable-1.gif?raw=true)                  |
| Customizable demo-2                    | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/customizable-2.gif?raw=true)                  |
| Customizable demo-3                    | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/customizable-3.gif?raw=true)                  |
| Customizable demo-4                    | ![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/customizable-4.gif?raw=true)                  |

---

`SmoothPageIndicator` uses the PageController's scroll offset to animate the active dot.

````dart
SmoothPageIndicator(
   controller: controller,  // PageController
   count:  6,
   effect:  WormEffect(),  // your preferred effect
   onDotClicked: (index){

   }
)

```dart

---

Unlike `SmoothPageIndicator` , `AnimatedSmoothIndicator` is self animated and all it needs is the active index.

```dart
AnimatedSmoothIndicator(
   activeIndex: yourActiveIndex,
   count: 6,
   effect: WormEffect(),
)

```dart

---

You can customize direction, width, height, radius, spacing, paint style, color and more...

```dart
SmoothPageIndicator(
   controller: controller,
   count:  6,
   axisDirection: Axis.vertical,
   effect:  SlideEffect(
      spacing:  8.0,
      radius:  4.0,
      dotWidth:  24.0,
      dotHeight:  16.0,
      paintStyle:  PaintingStyle.stroke,
      strokeWidth:  1.5,
      dotColor:  Colors.grey,
      activeDotColor:  Colors.indigo
   ),
)

```dart

---

Smooth page indicator will inherit directionality from its ancestors unless you specify a directionality by passing it directly to the widget or wrapping the Indicator with a Directionality widget from the flutter package.

```dart
SmoothPageIndicator(
   controller: controller,  // PageController
   count:  6,
   // forcing the indicator to use a specific direction
   textDirection: TextDirection.rtl
   effect:  WormEffect(),
);

```dart

![smooth_page_indicator](https://github.com/Milad-Akarie/smooth_page_indicator/blob/main/demo/smooth_page_indicator_demo_3.gif?raw=true)

You can support the library by liking it on pub, staring in on Github and reporting any bugs you encounter.

[smooth_page_indicator | Flutter Package](https://pub.dev/packages/smooth_page_indicator)
````
