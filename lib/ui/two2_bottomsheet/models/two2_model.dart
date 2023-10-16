// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [two2_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class Two2Model extends Equatable {
  Two2Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  Two2Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return Two2Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
