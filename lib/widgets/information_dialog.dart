// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/elevated_button.dart';

class InformationalDialog extends StatelessWidget {
  const InformationalDialog({
    super.key,
    this.dialogTitle,
    this.cancelText,
    this.confirmText,
    this.confirmCallback,
    this.cancelCallback,
    this.information,
  });

  final String? dialogTitle;
  final String? information;
  final String? cancelText;
  final String? confirmText;
  final void Function()? confirmCallback;
  final void Function()? cancelCallback;

  @override
  Widget build(BuildContext context) {
    final isSelection = cancelCallback != null && confirmCallback != null;
    final maxLines = _getMaxLines(information);
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),

      /// 대화 상자 상단의 제목. (선택 사항) [icon] 아래에 큰 글꼴로 표시됩니다.
      /// 일반적으로 [Text] 위젯입니다.
      title: dialogTitle != null
          ? Text(
              dialogTitle!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            )
          : null,
      titlePadding: EdgeInsets.only(top: 20.h, left: 20.w),
      titleTextStyle: AppTextStyle(
        fontSize: TextSize.lg,
        fontWeight: FontWeight.bold,
      ),

      /// 대화 상자 중앙에 더 밝은 글꼴로 표시되는 대화 상자의 콘텐츠입니다.
      /// 일반적으로 대화 상자의 메시지를 포함하는 [SingleChildScrollView]이며, 고유 치수(intrinsic dimensions) 리포트를 지원해야 합니다.
      /// [ListView], [GridView], [CustomScrollView]는 고유 치수를 지원하지 않는 대표적인 위젯입니다.
      /// 치수를 제한하지 않는 이러한 위젯들은 [SizedBox]와 같은 위젯으로 래핑하지 않는 한 여기에 사용할 수 없습니다.
      content: Text.rich(
        TextSpan(text: information),
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        textAlign: maxLines > 2 ? TextAlign.left : TextAlign.center,
      ),
      contentPadding: EdgeInsets.all(20.w),
      contentTextStyle: maxLines > 2
          ? AppTextStyle(
              fontSize: TextSize.md,
              lineHeight: Leading.tight,
              letterSpacing: LetterSpacing.tight,
            )
          : AppTextStyle(
              fontSize: TextSize.lg,
              fontWeight: FontWeight.w600,
              lineHeight: Leading.tight,
              letterSpacing: LetterSpacing.normal,
            ),

      /// 대화 상자 하단에 [OverflowBar]와 함께 표시되는 (선택 사항) 작업 집합입니다.
      /// 일반적으로 이것은 [TextButton] 위젯 목록입니다.
      /// 레이블이 여분의 줄로 래핑되는 버튼이 대화 상자 내의 전체 [OverflowBar]의 정렬에 맞게 정렬되도록 [TextButton] 내의 [Text]에 대해 [Text.textAlign]을 [TextAlign.end]으로 설정하는 것이 좋습니다.
      /// [title]이 널이 아니지만 [content]가 널인 경우 [title]과 [action]을 구분하기 위해 [OverflowBar] 위에 20픽셀의 패딩이 추가됩니다.
      actions: [
        if (isSelection)
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  height: 52.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.gray400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.customBorderBL10,
                      ),
                    ).noEffect,
                    onPressed: cancelCallback ??
                        () => Navigator.of(context).pop(false),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          cancelText ?? '취소',
                          style: textTheme.titleMedium!
                              .copyWith(fontSize: TextSize.md),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  height: 52.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: lightTheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.customBorderBR10,
                        )).noEffect,
                    onPressed:
                        confirmCallback ?? () => GoRouter.of(context).pop(true),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          confirmText ?? '확인',
                          style: textTheme.titleMedium!
                              .copyWith(fontSize: TextSize.md),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        if (!isSelection)
          CustomElevatedButton(
            text: '확인',
            buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: lightTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.customBorderB10,
                )).noEffect,
            height: 53.h,
            onTap: confirmCallback ?? () => GoRouter.of(context).pop(true),
            buttonTextStyle: AppTextStyle(
              fontWeight: FontWeight.bold,
              lineHeight: Leading.normal,
              letterSpacing: LetterSpacing.tighter,
            ),
          ),
      ],
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actionsPadding: EdgeInsets.zero,
    );
  }
}

int _getMaxLines(String? text) {
  if (text == null) {
    return 1;
  } else if (text.contains('\n')) {
    return text.split('\n').length;
  } else {
    return (text.length / 18).ceil();
  }
}

@widgetbook.UseCase(
  name: 'With Information 1',
  type: InformationalDialog,
)
InformationalDialog thatCarIsAlreadyTaken(BuildContext context) {
  return const InformationalDialog(
    information: '선택한 시간에 차량이\n이미 예약되어 있습니다.',
  );
}

@widgetbook.UseCase(
  name: 'With Information 2',
  type: InformationalDialog,
)
InformationalDialog thePasswordAndIdNotMatched(BuildContext context) {
  return const InformationalDialog(
    information: '아이디/비밀번호가\n맞지 않습니다.',
  );
}

@widgetbook.UseCase(
  name: 'With Information 3',
  type: InformationalDialog,
)
InformationalDialog signInOrSignUpFirst(BuildContext context) {
  return const InformationalDialog(
    information: '로그인 후 사용해주세요.',
  );
}

@widgetbook.UseCase(
  name: 'Full Property - Sign Out Confirm',
  type: InformationalDialog,
)
InformationalDialog areYouSureWantToSinOut(BuildContext context) {
  return InformationalDialog(
    dialogTitle: '회원탈퇴',
    information: '위굴리 프렌즈의 회원을 탈퇴하시겠습니까?',
    cancelText: '취소',
    confirmText: '탈퇴',
    cancelCallback: () => print('cancel'),
    confirmCallback: () => print('confirm'),
  );
}
