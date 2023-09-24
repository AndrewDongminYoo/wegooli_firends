class OverlayRequest<T> {
  const OverlayRequest({
    this.showIconInMainButton,
    this.showIconInSecondaryButton,
    this.showIconInAdditionalButton,
    this.title,
    this.description,
    this.hasImage,
    this.imageUrl,
    this.mainButtonTitle,
    this.secondaryButtonTitle,
    this.additionalButtonTitle,
    this.takesInput,
    this.data,
    this.variant,
  });

  /// 대화 상자의 제목
  final String? title;

  /// 대화 상자 본문에 표시할 텍스트
  final String? description;

  /// 이미지 사용 여부를 나타냅니다.
  final bool? hasImage;

  /// 표시할 이미지의 URL/경로
  final String? imageUrl;

  /// 기본 버튼에 표시할 텍스트
  final String? mainButtonTitle;

  /// 기본 버튼에 아이콘을 표시할지 여부를 나타내는 부울입니다.
  final bool? showIconInMainButton;

  /// 대화 상자의 보조 버튼에 표시할 텍스트(일반적으로 취소)
  final String? secondaryButtonTitle;

  /// 기본 버튼에 아이콘을 표시할지 여부를 나타냅니다.
  final bool? showIconInSecondaryButton;

  /// 대화 상자의 세 번째 버튼에 표시할 텍스트
  final String? additionalButtonTitle;

  /// 추가 버튼에 아이콘을 표시할지 여부를 나타냅니다.
  final bool? showIconInAdditionalButton;

  /// 대화 상자가 입력을 받는지 여부를 나타냅니다.
  final bool? takesInput;

  /// 열거형과 함께 사용하기 위한 것입니다. 여러 개의 다른
  /// 대화 상자를 만들려면 여기에 열거형을 전달하고 빌더에서 값을 확인하세요.
  final dynamic variant;

  /// UI에 전달할 추가 데이터
  final T? data;
}

class DialogRequest<T> extends OverlayRequest<T> {
  const DialogRequest({
    bool? showIconInMainButton,
    bool? showIconInSecondaryButton,
    bool? showIconInAdditionalButton,
    String? title,
    String? description,
    bool? hasImage,
    String? imageUrl,
    String? mainButtonTitle,
    String? secondaryButtonTitle,
    String? additionalButtonTitle,
    bool? takesInput,
    T? data,
    dynamic variant,
  }) : super(
          additionalButtonTitle: additionalButtonTitle,
          description: description,
          hasImage: hasImage,
          imageUrl: imageUrl,
          mainButtonTitle: mainButtonTitle,
          secondaryButtonTitle: secondaryButtonTitle,
          showIconInAdditionalButton: showIconInAdditionalButton,
          showIconInMainButton: showIconInMainButton,
          showIconInSecondaryButton: showIconInSecondaryButton,
          takesInput: takesInput,
          title: title,
          data: data,
          variant: variant,
        );
}

class SheetRequest<T> extends OverlayRequest<T> {
  const SheetRequest({
    bool? showIconInMainButton,
    bool? showIconInSecondaryButton,
    bool? showIconInAdditionalButton,
    String? title,
    String? description,
    bool? hasImage,
    String? imageUrl,
    String? mainButtonTitle,
    String? secondaryButtonTitle,
    String? additionalButtonTitle,
    bool? takesInput,
    T? data,
    dynamic variant,
  }) : super(
          additionalButtonTitle: additionalButtonTitle,
          description: description,
          hasImage: hasImage,
          imageUrl: imageUrl,
          mainButtonTitle: mainButtonTitle,
          secondaryButtonTitle: secondaryButtonTitle,
          showIconInAdditionalButton: showIconInAdditionalButton,
          showIconInMainButton: showIconInMainButton,
          showIconInSecondaryButton: showIconInSecondaryButton,
          takesInput: takesInput,
          title: title,
          variant: variant,
          data: data,
        );
}
