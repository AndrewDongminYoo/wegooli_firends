// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dropdown_button2/dropdown_button2.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/data/common/dropdown_data.dart';
import '/shared/form_field_controller.dart';
import '/theme/custom_text_style.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.options,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.contentPadding,
    this.controller,
    this.disabled = false,
    this.fillColor,
    this.height,
    this.hidesUnderline = false,
    this.hintStyle,
    this.hintText,
    this.icon,
    this.isMultiSelect = false,
    this.isSearchable = false,
    this.margin,
    this.onChanged,
    this.onChangedForMultiSelect,
    this.searchCursorColor,
    this.searchHintText,
    this.textStyle,
    this.width,
  });

  final bool disabled;
  final bool hidesUnderline;
  final bool isMultiSelect;
  final bool isSearchable;
  final Color? borderColor;
  final Color? fillColor;
  final Color? searchCursorColor;
  final double? borderRadius;
  final double? borderWidth;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FormFieldController<DropdownData>? controller;
  final Function(List<DropdownData>?)? onChangedForMultiSelect;
  final Function(DropdownData?)? onChanged;
  final List<DropdownData> options;
  final String? hintText;
  final String? searchHintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? icon;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final TextEditingController _textEditingController = TextEditingController();

  void Function() get listener => widget.isMultiSelect
      ? () {}
      : () => widget.onChanged!(widget.controller?.value);

  @override
  void initState() {
    widget.controller?.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller?.removeListener(listener);
    super.dispose();
  }

  List<DropdownData> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    final value = widget.options.contains(widget.controller?.value)
        ? widget.controller?.value
        : null;
    final items = widget.options
        .map(
          (option) => DropdownMenuItem<DropdownData>(
            value: option,
            child: Text(
              option.title,
              style: widget.textStyle,
            ),
          ),
        )
        .toList();
    final hintText = widget.hintText != null
        ? Text(widget.hintText!, style: widget.textStyle)
        : null;
    final onChanged = widget.disabled || widget.isMultiSelect
        ? null
        : (value) => widget.controller?.value = value;
    final dropdownWidget = widget.isMultiSelect
        ? _buildMultiSelectDropdown(
            hintText,
            widget.isSearchable,
            widget.onChangedForMultiSelect!,
            widget.disabled,
          )
        : widget.isSearchable
            ? _buildSearchableDropdown(
                value,
                items,
                onChanged,
                hintText,
              )
            : _buildNonSearchableDropdown(value, items, onChanged, hintText);
    final childWidget = Container(
      margin: widget.margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 4.h),
        border: Border.all(
          color: widget.borderColor ?? const Color(0xFFB0B2BC),
          width: widget.borderWidth ?? 1.adaptSize,
        ),
        color: widget.fillColor,
      ),
      child: Padding(
        padding: widget.contentPadding ?? EdgeInsets.symmetric(vertical: 9.v),
        child: widget.hidesUnderline
            ? DropdownButtonHideUnderline(child: dropdownWidget)
            : dropdownWidget,
      ),
    );
    if (widget.height != null || widget.width != null) {
      return SizedBox(
        width: widget.width,
        height: widget.height,
        child: childWidget,
      );
    }
    return childWidget;
  }

  Widget _buildNonSearchableDropdown(
    DropdownData? value,
    List<DropdownMenuItem<DropdownData>>? items,
    void Function(DropdownData?)? onChanged,
    Text? hintText,
  ) {
    return DropdownButton<DropdownData>(
      value: value,
      hint: hintText,
      items: items,
      onChanged: onChanged,
      icon: widget.icon,
      isExpanded: true,
      dropdownColor: widget.fillColor,
      focusColor: Colors.transparent,
    );
  }

  Widget _buildSearchableDropdown(
    DropdownData? value,
    List<DropdownMenuItem<DropdownData>>? items,
    void Function(DropdownData?)? onChanged,
    Text? hintText,
  ) {
    final overlayColor = MaterialStateProperty.resolveWith<Color?>((states) =>
        states.contains(MaterialState.focused) ? Colors.transparent : null);
    final iconStyleData = widget.icon != null
        ? IconStyleData(icon: widget.icon!)
        : const IconStyleData();
    return DropdownButton2<DropdownData>(
      value: value,
      hint: hintText,
      items: items,
      iconStyleData: iconStyleData,
      buttonStyleData: ButtonStyleData(
        overlayColor: overlayColor,
      ),
      menuItemStyleData: MenuItemStyleData(overlayColor: overlayColor),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.fillColor,
        ),
      ),
      onChanged: onChanged,
      isExpanded: true,
      dropdownSearchData: DropdownSearchData<DropdownData>(
        searchController: _textEditingController,
        searchInnerWidgetHeight: 50,
        searchInnerWidget: Container(
          height: 50,
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 4,
            right: 8,
            left: 8,
          ),
          child: TextFormField(
            expands: true,
            maxLines: null,
            controller: _textEditingController,
            cursorColor: widget.searchCursorColor,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              hintText: widget.searchHintText,
              hintStyle: widget.hintStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        searchMatchFn: (item, searchValue) {
          return item.value!.title
              .toLowerCase()
              .contains(searchValue.toLowerCase());
        },
      ),

      /// 메뉴를 닫을 때 검색 값을 지웁니다.
      onMenuStateChange: (isOpen) {
        if (!isOpen) {
          _textEditingController.clear();
        }
      },
    );
  }

  Widget _buildMultiSelectDropdown(
    Text? hintText,
    bool isSearchable,
    Function(List<DropdownData>?) onChangedForMultiSelect,
    bool disabled,
  ) {
    final overlayColor = MaterialStateProperty.resolveWith<Color?>((states) =>
        states.contains(MaterialState.focused) ? Colors.transparent : null);
    final iconStyleData = widget.icon != null
        ? IconStyleData(icon: widget.icon!)
        : const IconStyleData();
    return DropdownButton2<DropdownData>(
      value: selectedItems.isEmpty ? null : selectedItems.last,
      hint: hintText,
      items: widget.options.map((item) {
        return DropdownMenuItem(
          value: item,

          /// 항목을 선택할 때 메뉴가 닫히지 않도록 기본 [onTap]을 비활성화합니다.
          enabled: false,
          child: StatefulBuilder(
            builder: (context, menuSetState) {
              final isSelected = selectedItems.contains(item);
              return InkWell(
                onTap: () {
                  isSelected
                      ? selectedItems.remove(item)
                      : selectedItems.add(item);
                  onChangedForMultiSelect(selectedItems);

                  /// 버튼의 텍스트를 업데이트하기 위해 [StatefulWidget]을 리빌드합니다.
                  setState(() {});

                  /// [dropdownMenu] 위젯을 리빌드하여 체크 표시를 업데이트합니다.
                  menuSetState(() {});
                },
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      if (isSelected)
                        const Icon(Icons.check_box_outlined)
                      else
                        const Icon(Icons.check_box_outline_blank),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          item as String,
                          style: widget.textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }).toList(),
      iconStyleData: iconStyleData,
      buttonStyleData: ButtonStyleData(
        overlayColor: overlayColor,
      ),
      menuItemStyleData: MenuItemStyleData(overlayColor: overlayColor),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.fillColor,
        ),
      ),

      /// [onChanged]는 [onChangedForMultiSelect] 함수에 의해 처리됩니다.
      onChanged: disabled ? null : (val) {},
      isExpanded: true,
      selectedItemBuilder: (context) {
        return widget.options.map(
          (item) {
            return Container(
              alignment: AlignmentDirectional.center,
              child: Text(
                selectedItems.join(', '),
                style: AppTextStyle(
                  fontSize: TextSize.sm,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            );
          },
        ).toList();
      },
      dropdownSearchData: isSearchable
          ? DropdownSearchData<DropdownData>(
              searchController: _textEditingController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: _textEditingController,
                  cursorColor: widget.searchCursorColor,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: widget.searchHintText,
                    hintStyle: widget.hintStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value!.title
                    .toLowerCase()
                    .contains(searchValue.toLowerCase());
              },
            )
          : null,

      /// 메뉴를 닫을 때 검색 값을 지웁니다.
      onMenuStateChange: isSearchable
          ? (isOpen) {
              if (!isOpen) {
                _textEditingController.clear();
              }
            }
          : null,
    );
  }
}
