// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// 대상 [Image]가 로드되는 동안 [placeholder] 위젯을 표시한 다음 새 Image가 로드되면 페이드 인하는 Image입니다.
///
/// 이는 [FadeInImage]와 비슷하지만, [ImageProvider] 대신 위젯을 [placeholder]로 지정할 수 있다는 점에서 차이가 있습니다.
/// 또한 Image를 다른 위젯(예: [Ink.image])으로 감싸고 싶은 경우 [child] 인수를 재정의할 수 있습니다.
class FadeInImagePlaceholder extends StatelessWidget {
  const FadeInImagePlaceholder({
    super.key,
    required this.image,
    required this.placeholder,
    this.child,
    this.duration = const Duration(milliseconds: 500),
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.fit,
  });

  /// 메모리에 로드할 대상 Image입니다.
  final ImageProvider image;

  /// 대상 [Image]가 로드되는 동안 표시되는 위젯입니다.
  final Widget placeholder;

  /// [Image]가 로드된 후 [placeholder] 대신 표시할 위젯입니다.
  /// 로드됩니다.
  ///
  /// 기본값은 [Image]를 표시하는 것입니다.
  final Widget? child;

  /// placeholder가 페이드아웃되고 [children]이 페이드인될 때까지
  /// [children]의 페이드 인에 걸리는 시간입니다.
  final Duration duration;

  /// [Image.excludeFromSemantics]를 참조하세요.
  final bool excludeFromSemantics;

  /// [Image.width]를 참조하세요.
  final double? width;

  /// [Image.height]를 참조하세요.
  final double? height;

  /// [Image.fit]을 참조하세요.
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      fit: fit,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return this.child ?? child;
        } else {
          return AnimatedSwitcher(
            duration: duration,
            child: frame != null ? this.child ?? child : placeholder,
          );
        }
      },
    );
  }
}
