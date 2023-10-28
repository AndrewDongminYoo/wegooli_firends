// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

enum Pressed {
  // 버튼이 눌려진 상태
  pressed,
  // 눌려지지 않은 기본 상태.
  notPressed,
}

class LongPressableButton extends StatefulWidget {
  const LongPressableButton({
    super.key,
    required this.onPressed,
    this.crossAxis = CrossAxisAlignment.start,
    this.mainAxis = MainAxisAlignment.center,
    this.vibrate = true,
    this.animate = false,
    this.isThreeD = false,
    this.shadowColor,
    this.backgroundColor,
    this.subtitle,
    this.width,
    this.height,
    this.title,
    this.child,
    this.iconWidget,
    this.gradient,
    this.asset,
    this.boxShadow,
    this.margin,
    this.padding,
    this.borderRadius,
    this.decoration,
    this.isLoading = false,
  })  : assert(backgroundColor == null || gradient == null,
            '배경색 또는 그라데이션 중 하나만 사용해야 합니다.'),
        assert(iconWidget == null || asset == null,
            'icon 위젯과 이미지 에셋 중 하나만 사용해야 합니다.'),
        assert(
            decoration == null ||
                (backgroundColor == null && boxShadow == null),
            '데코레이션을 사용할 경우 배경색과 그림자는 데코레이션에서 명시해야 합니다.'),
        assert(
            child == null || (title == null), '자식 위젯을 사용할 경우 제목 속성은 비워둬야 합니다.'),
        assert(!(animate == true && height == null),
            'animate 기능을 사용할 때는 height 속성을 명시해주세요.');

  /// 위젯에 제목을 지정
  final String? title;

  /// 위젯에 부제목을 지정
  final Widget? subtitle;

  /// 보통은 [Text] 위젯이지만 어떤 위젯이든 될 수 있음
  final Widget? child;

  /// 버튼에 커스텀 그라데이션을 부여
  final Gradient? gradient;

  /// 그림자 색을 포함하지 않는 버튼의 배경색
  final Color? backgroundColor;

  /// 버튼에 커스텀 그림자를 부여
  final List<BoxShadow>? boxShadow;

  /// 아이콘(Icons.abc)
  final Widget? iconWidget;

  /// Svg 또는 이미지 에셋
  final ButtonAsset? asset;

  final Decoration? decoration;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;

  /// 버튼의 그림자 색상을 지정하는 데 사용
  final Color? shadowColor;

  /// [true]일 때 [CircularIndicator] 표시
  final bool isLoading;

  /// 이를 사용하여 버튼 속성을 진동하거나 진동하지 않도록 설정할 수 있음.
  final bool vibrate;

  /// [isThreeD]가 켜져있을 때 버튼에 색상을 지정하지 않으면 하단이 버튼에 3D 효과를 적용하는 데
  /// 사용되는 그림자 색상과 동일한 색상을 사용하기 때문에 3D 효과가 표현되지 않음.
  /// 이렇게하면 기본적으로 그림자에 대한 4가지 기본 값을 가질 수 있음.
  /// => 기본 박스셰도우 3D 효과를 얻으려면 [true]로 설정.
  final bool isThreeD;

  /// 버튼을 눌렀을 때 실행되는 onPressed 함수
  final void Function() onPressed;

  /// 버튼에 자막과 제목을 지정할 때 열의 교차축 값을 변경하려는 경우 사용
  final CrossAxisAlignment crossAxis;

  /// 버튼의 너비
  final double? width;

  /// 버튼의 높이 - 버튼의 애니메이션 속성이 [true]로 설정된 경우 사용자가 버튼에 높이 값을 지정해야 함
  final double? height;

  /// Row에 메인축 값을 지정하는 데 사용
  final MainAxisAlignment mainAxis;

  /// [animate]와 [isThreeD]가 [true]면 애니메이션 적용. 기본값은 [false]
  final bool animate;

  @override
  State<LongPressableButton> createState() => _LongPressableButtonState();
}

class _LongPressableButtonState extends State<LongPressableButton>
    with SingleTickerProviderStateMixin {
  /// 애니메이션 프로퍼티가 true로 설정되어 있고 [isThree]도 [true] 일 때 버튼의 값
  /// [Pressed.pressed] 값을 사용하여 버튼이 내부에서 눌려지는 비활성화 된 버튼 효과를 가질 수 있으며,
  /// 기본값 [Pressed.notPressed]를 사용하여 버튼을 3D 버전으로 복원 할 수 있습니다.
  Pressed pressed = Pressed.notPressed;
  bool animationStart = false;
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );

    _animation = Tween<double>(end: 1.5, begin: 4).animate(_controller!)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  bool change = false;

  /// 이 함수는 버튼 기본값이 [Pressed.pressed]로 설정되어 있을 때 동작
  /// 이 함수는 컨트롤러가 앞으로 이동하도록 트리거하고 값이 [Pressed.notPressed]로 돌아 오면 컨트롤러가 원래 위치로 반전
  void _checkState() {
    if (pressed == Pressed.notPressed) {
      if (change) {
        return;
      }
      animationStart = false;
      change = true;

      /// 이 애니메이션을 역방향(처음 방향)으로 실행하기 시작합니다.
      _controller?.reverse();
    }

    if (widget.animate && pressed == Pressed.pressed) {
      change = false;
      animationStart = true;

      /// 이 애니메이션을 앞으로(끝을 향해) 실행하기 시작합니다.
      _controller?.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    _checkState();

    return widget.isLoading
        ? SizedBox(
            height: widget.height,
            width: widget.height,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Container(
            margin: widget.margin,
            padding: widget.padding,
            width: widget.width,

            /// 하단에서 버튼을 누를 때 애니메이션 효과를 위해 버튼의 박스 셰도우를 변경하고
            /// 버튼의 여백을 하단에서 2.5 픽셀 추가하여 애니메이션을 적용하는 데 사용.
            /// 이론적으로 모든 버튼의 가능한 모든 조합을 만들 수있는 사용자 정의 버튼이어야한다고 가정합니다.
            height: widget.animate && widget.height != null
                ? widget.height! + 2.5
                : widget.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DecoratedBox(
                  decoration: widget.decoration ??
                      BoxDecoration(
                        borderRadius: widget.borderRadius != null
                            ? BorderRadius.circular(widget.borderRadius ?? 0)
                            : null,
                        gradient: widget.gradient,
                        color: widget.isThreeD
                            ? widget.backgroundColor
                            : Colors.black,

                        /// 3D 스타일 버튼을 만들려면 박스셰도우만 사용하세요.
                        boxShadow: widget.isThreeD == true
                            ? widget.boxShadow ??
                                _defaultBoxShadow(widget.shadowColor)
                            : null,
                      ),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      mouseCursor: MouseCursor.uncontrolled,
                      splashFactory: NoSplash.splashFactory,
                      onTapDown: !(pressed == Pressed.pressed)
                          ? (TapDownDetails value) {
                              if (widget.animate) {
                                setState(() {
                                  animationStart = true;
                                  _controller?.forward();
                                });
                              }
                              if (widget.vibrate && !kIsWeb) {
                                HapticFeedback.lightImpact();
                              }
                            }
                          : null,
                      onTapCancel: () async {
                        if (widget.animate) {
                          animationStart = false;
                          await _controller?.reverse();
                          setState(() {});
                        }
                      },
                      borderRadius:
                          BorderRadius.circular(widget.borderRadius ?? 0),
                      onTapUp: !(pressed == Pressed.pressed)
                          ? (TapUpDetails _) async {
                              const condition = true;
                              if (widget.animate && condition) {
                                animationStart = !animationStart;
                                if (animationStart) {
                                  await _controller?.forward();
                                } else {
                                  await _controller?.reverse();
                                }
                                setState(() {});
                              }
                              widget.onPressed();
                            }
                          : null,
                      child: Tooltip(
                          message: _tooltip(widget.title),
                          child: stackedButton()),
                    ),
                  ),
                ),
                if (widget.animate)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    height: !animationStart ? 2.5 : 0,
                    width: double.infinity,
                  )
                else
                  Container(),
              ],
            ),
          );
  }

  List<BoxShadow> _defaultBoxShadow(Color? shadowColor) {
    return [
      //bottom
      BoxShadow(
        color: shadowColor ?? Palette.pressed,
        offset: Offset(0, _animation?.value ?? 4),
      ),
      BoxShadow(
        color: shadowColor ?? Palette.pressed,
        offset: const Offset(0, -1.5),
      ),
      BoxShadow(
        color: shadowColor ?? Palette.pressed,
        offset: const Offset(1.5, 0),
      ),
      BoxShadow(
        color: shadowColor ?? Palette.pressed,
        offset: const Offset(-1.5, 0),
      ),
    ];
  }

  Stack stackedButton() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          child: Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              // color: lightTheme.onPrimaryContainer,
              color: lightTheme.onPrimaryContainer,
              boxShadow: [
                BoxShadow(
                  color: Palette.shadow,
                  spreadRadius: 2.w,
                  blurRadius: 2.w,
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadiusStyle.circleBorder65,
            ),
            child: Container(
              height: 120.w,
              width: 120.w,
              decoration: BoxDecoration(
                color: animationStart ? Palette.button1 : Palette.inverted,
                borderRadius: BorderRadius.circular(
                  60.w,
                ),
                border: Border.all(
                  color: Palette.blueGray300,
                  width: 1.w,
                ),
              ),
            ),
          ),
        ),
        Align(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 42.w,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  widget.asset!.assetPath,
                  height: widget.asset?.height,
                  width: widget.asset?.height,
                  colorFilter: ColorFilter.mode(
                    animationStart ? Palette.inverted : Palette.button1,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  widget.title ?? '',
                  style: textTheme.titleMedium!.bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _tooltip(String? title) {
    return switch (title) {
      '문열기' => '차량 문 잠금 풀기',
      '문잠금' => '차량 문 잠그기',
      '비상등' => '비상등 켜기',
      _ => '차량 위치 확인을 위해 경적 울리기'
    };
  }
}

class ButtonAsset {
  const ButtonAsset(
    this.assetPath, {
    this.width,
    this.height,
    this.color,
  });

  final String assetPath;
  final double? width;
  final double? height;
  final Color? color;

  bool get isSvg => assetPath.endsWith('.svg');
}

@widgetbook.UseCase(
  name: "Lock You Car's Door",
  type: LongPressableButton,
)
LongPressableButton areYouSureWantToSinOut(BuildContext context) {
  return LongPressableButton(
    onPressed: () => print('loo-ong presssed'),
    animate: true,
    isThreeD: true,
    title: '문잠금',
    height: 130.w,
    width: 130.w,
    borderRadius: 65.w,
    backgroundColor: lightTheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: Palette.shadow,
        spreadRadius: 2.w,
        blurRadius: 2.w,
        offset: const Offset(2, 2),
      ),
    ],
    asset: ButtonAsset(
      Assets.svg.icoLocked.path,
      height: 46.w,
      width: 46.w,
    ),
  );
}
