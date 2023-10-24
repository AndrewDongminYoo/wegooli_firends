// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/routes/app_router.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import 'controller/unsubscribe_confirm_controller.dart';

// ignore_for_file: must_be_immutable
class UnsubscribeConfirmDialog extends StatelessWidget {
  UnsubscribeConfirmDialog(this.controller, {super.key});

  UnsubscribeConfirmController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10),

      /// 대화 상자 상단의 (선택 사항) [icon] 아래에 큰 글꼴로 표시됩니다.
      /// 일반적으로 [Text] 위젯입니다.
      title: const Text(
        '구독 해지 예약',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
      ),
      titlePadding: getPadding(top: 20, left: 20),
      titleTextStyle: AppTextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.bold,
      ),

      /// 대화 상자 중앙에 더 밝은 글꼴로 표시되는 대화 상자의 콘텐츠입니다.
      /// 일반적으로 대화 상자의 메시지를 포함하는 [SingleChildScrollView]이며, 고유 치수(intrinsic dimensions) 리포트를 지원해야 합니다.
      /// [ListView], [GridView], [CustomScrollView]는 고유 치수를 지원하지 않는 대표적인 위젯입니다.
      /// 치수를 제한하지 않는 이러한 위젯들은 [SizedBox]와 같은 위젯으로 래핑하지 않는 한 여기에 사용할 수 없습니다.
      content: const Text(
        '해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
      contentPadding: getPadding(all: 20),
      contentTextStyle: AppTextStyle(
        fontSize: 16.fSize,
        lineHeight: Leading.tight,
        letterSpacing: LetterSpacing.tight,
      ),

      /// 대화 상자 하단에 [OverflowBar]와 함께 표시되는 (선택 사항) 작업 집합입니다.
      /// 일반적으로 이것은 [TextButton] 위젯 목록입니다.
      /// 레이블이 여분의 줄로 래핑되는 버튼이 대화 상자 내의 전체 [OverflowBar]의 정렬에 맞게 정렬되도록 [TextButton] 내의 [Text]에 대해 [Text.textAlign]을 [TextAlign.end]으로 설정하는 것이 좋습니다.
      /// [title]이 널이 아니지만 [content]가 널인 경우 [title]과 [action]을 구분하기 위해 [OverflowBar] 위에 20픽셀의 패딩이 추가됩니다.
      actions: [
        Row(
          children: [
            CustomElevatedButton(
              width: 145.h,
              height: 52.v,
              text: '취소',
              buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: Palette.gray400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.customBorderBL10))
                  .noEffect,
              buttonTextStyle:
                  textTheme.titleMedium!.copyWith(fontSize: 16.fSize),
              onTap: () => AppRouter.back(result: false),
            ),
            CustomElevatedButton(
              width: 145.h,
              height: 52.v,
              text: '해지하기',
              buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: lightTheme.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.customBorderBR10))
                  .noEffect,
              buttonTextStyle:
                  textTheme.titleMedium!.copyWith(fontSize: 16.fSize),
              onTap: () => AppRouter.back(result: true),
            ),
          ],
        ),
      ],
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actionsPadding: EdgeInsets.zero,
    );
  }
}
