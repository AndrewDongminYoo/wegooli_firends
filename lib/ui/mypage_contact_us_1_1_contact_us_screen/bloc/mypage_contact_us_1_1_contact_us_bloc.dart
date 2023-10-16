// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/mypage_contact_us_1_1_contact_us_screen/models/listaddphotoalt_item_model.dart';
import '/ui/mypage_contact_us_1_1_contact_us_screen/models/mypage_contact_us_1_1_contact_us_model.dart';

part 'mypage_contact_us_1_1_contact_us_event.dart';
part 'mypage_contact_us_1_1_contact_us_state.dart';

/// A bloc that manages the state of a MyPageContactUs11ContactUs according to the event that is dispatched to it.
class MyPageContactUs11ContactUsBloc extends Bloc<
    MyPageContactUs11ContactUsEvent, MyPageContactUs11ContactUsState> {
  MyPageContactUs11ContactUsBloc(MyPageContactUs11ContactUsState initialState)
      : super(initialState) {
    on<MyPageContactUs11ContactUsInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<MyPageContactUs11ContactUsState> emit,
  ) async {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }

  List<ListaddphotoaltItemModel> fillListaddphotoaltItemList() {
    return List.generate(5, (index) => ListaddphotoaltItemModel());
  }

  Future<void> _onInitialize(
    MyPageContactUs11ContactUsInitialEvent event,
    Emitter<MyPageContactUs11ContactUsState> emit,
  ) async {
    emit(state.copyWith(groupSixtyFiveController: TextEditingController()));
    emit(state.copyWith(
        mypageContactUs11ContactUsModelObj:
            state.mypageContactUs11ContactUsModelObj?.copyWith(
                dropdownItemList: fillDropdownItemList(),
                listaddphotoaltItemList: fillListaddphotoaltItemList())));
  }
}