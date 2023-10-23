// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dropdown_button2/dropdown_button2.dart';

// 🌎 Project imports:
import '/shared/form_field_controller.dart';
import '/theme/custom_text_style.dart';

class CustomDropDown<T> extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.controller,
    this.hintText,
    this.searchHintText,
    required this.options,
    this.optionLabels,
    this.onChanged,
    this.onChangedForMultiSelect,
    this.icon,
    this.width,
    this.height,
    this.fillColor,
    this.searchHintTextStyle,
    this.searchCursorColor,
    required this.textStyle,
    required this.elevation,
    required this.borderWidth,
    required this.borderRadius,
    required this.borderColor,
    required this.margin,
    this.hidesUnderline = false,
    this.disabled = false,
    this.isSearchable = false,
    this.isMultiSelect = false,
  });

  final FormFieldController<T> controller;
  final String? hintText;
  final String? searchHintText;
  final List<T> options;
  final List<String>? optionLabels;
  final Function(T?)? onChanged;
  final Function(List<T>?)? onChangedForMultiSelect;
  final Widget? icon;
  final double? width;
  final double? height;
  final Color? fillColor;
  final TextStyle? searchHintTextStyle;
  final Color? searchCursorColor;
  final TextStyle textStyle;
  final double elevation;
  final double borderWidth;
  final double borderRadius;
  final Color borderColor;
  final EdgeInsetsGeometry margin;
  final bool hidesUnderline;
  final bool disabled;
  final bool isSearchable;
  final bool isMultiSelect;

  @override
  State<CustomDropDown<T>> createState() => _CustomDropDownState<T>();
}

class _CustomDropDownState<T> extends State<CustomDropDown<T>> {
  final TextEditingController _textEditingController = TextEditingController();

  void Function() get listener => widget.isMultiSelect
      ? () {}
      : () => widget.onChanged!(widget.controller.value);

  @override
  void initState() {
    widget.controller.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(listener);
    super.dispose();
  }

  List<T> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    final optionToDisplayValue = Map.fromEntries(
      widget.options.asMap().entries.map((option) => MapEntry(
          option.value,
          widget.optionLabels == null ||
                  widget.optionLabels!.length < option.key + 1
              ? option.value.toString()
              : widget.optionLabels![option.key])),
    );
    final value = widget.options.contains(widget.controller.value)
        ? widget.controller.value
        : null;
    final items = widget.options
        .map(
          (option) => DropdownMenuItem<T>(
            value: option,
            child: Text(
              optionToDisplayValue[option] ?? '',
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
        : (value) => widget.controller.value = value;
    final dropdownWidget = widget.isMultiSelect
        ? _buildMultiSelectDropdown(
            hintText,
            optionToDisplayValue,
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
                optionToDisplayValue,
              )
            : _buildNonSearchableDropdown(value, items, onChanged, hintText);
    final childWidget = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        color: widget.fillColor,
      ),
      child: Padding(
        padding: widget.margin,
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
    T? value,
    List<DropdownMenuItem<T>>? items,
    void Function(T?)? onChanged,
    Text? hintText,
  ) {
    return DropdownButton<T>(
      value: value,
      hint: hintText,
      items: items,
      elevation: widget.elevation.toInt(),
      onChanged: onChanged,
      icon: widget.icon,
      isExpanded: true,
      dropdownColor: widget.fillColor,
      focusColor: Colors.transparent,
    );
  }

  Widget _buildSearchableDropdown(
    T? value,
    List<DropdownMenuItem<T>>? items,
    void Function(T?)? onChanged,
    Text? hintText,
    Map<T, String> optionLabels,
  ) {
    final overlayColor = MaterialStateProperty.resolveWith<Color?>((states) =>
        states.contains(MaterialState.focused) ? Colors.transparent : null);
    final iconStyleData = widget.icon != null
        ? IconStyleData(icon: widget.icon!)
        : const IconStyleData();
    return DropdownButton2<T>(
      value: value,
      hint: hintText,
      items: items,
      iconStyleData: iconStyleData,
      buttonStyleData: ButtonStyleData(
        elevation: widget.elevation.toInt(),
        overlayColor: overlayColor,
      ),
      menuItemStyleData: MenuItemStyleData(overlayColor: overlayColor),
      dropdownStyleData: DropdownStyleData(
        elevation: widget.elevation.toInt(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.fillColor,
        ),
      ),
      onChanged: onChanged,
      isExpanded: true,
      dropdownSearchData: DropdownSearchData<T>(
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
              hintStyle: widget.searchHintTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        searchMatchFn: (item, searchValue) {
          return (optionLabels[item.value] ?? '')
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
    Map<T, String> optionLabels,
    bool isSearchable,
    Function(List<T>?) onChangedForMultiSelect,
    bool disabled,
  ) {
    final overlayColor = MaterialStateProperty.resolveWith<Color?>((states) =>
        states.contains(MaterialState.focused) ? Colors.transparent : null);
    final iconStyleData = widget.icon != null
        ? IconStyleData(icon: widget.icon!)
        : const IconStyleData();
    return DropdownButton2<T>(
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
        elevation: widget.elevation.toInt(),
        overlayColor: overlayColor,
      ),
      menuItemStyleData: MenuItemStyleData(overlayColor: overlayColor),
      dropdownStyleData: DropdownStyleData(
        elevation: widget.elevation.toInt(),
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
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            );
          },
        ).toList();
      },
      dropdownSearchData: isSearchable
          ? DropdownSearchData<T>(
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
                    hintStyle: widget.searchHintTextStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return (optionLabels[item.value] ?? '')
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
