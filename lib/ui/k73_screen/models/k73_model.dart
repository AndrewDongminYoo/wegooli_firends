// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '/ui/k73_screen/models/datecolumn1_item_model.dart';

/// This class defines the variables used in the [k73_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K73Model extends Equatable {
  K73Model({this.datecolumn1ItemList = const []});

  List<Datecolumn1ItemModel> datecolumn1ItemList;

  K73Model copyWith({List<Datecolumn1ItemModel>? datecolumn1ItemList}) {
    return K73Model(
      datecolumn1ItemList: datecolumn1ItemList ?? this.datecolumn1ItemList,
    );
  }

  @override
  List<Object?> get props => [datecolumn1ItemList];
}
