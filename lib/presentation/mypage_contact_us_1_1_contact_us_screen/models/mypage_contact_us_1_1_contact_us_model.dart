// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_1_1_contact_us_screen/models/listaddphotoalt_item_model.dart';

/// This class defines the variables used in the [mypage_contact_us_1_1_contact_us_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPageContactUs11ContactUsModel extends Equatable {
  MyPageContactUs11ContactUsModel({
    this.dropdownItemList = const [],
    this.listaddphotoaltItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListaddphotoaltItemModel> listaddphotoaltItemList;

  MyPageContactUs11ContactUsModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListaddphotoaltItemModel>? listaddphotoaltItemList,
  }) {
    return MyPageContactUs11ContactUsModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listaddphotoaltItemList:
          listaddphotoaltItemList ?? this.listaddphotoaltItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listaddphotoaltItemList];
}
