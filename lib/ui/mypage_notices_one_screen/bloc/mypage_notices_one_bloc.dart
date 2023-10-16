// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/mypage_notices_one_screen/models/list_item_model.dart';
import '/ui/mypage_notices_one_screen/models/mypage_notices_one_model.dart';

part 'mypage_notices_one_event.dart';
part 'mypage_notices_one_state.dart';

/// A bloc that manages the state of a MyPageNoticesOne according to the event that is dispatched to it.
class MyPageNoticesOneBloc
    extends Bloc<MyPageNoticesOneEvent, MyPageNoticesOneState> {
  MyPageNoticesOneBloc(MyPageNoticesOneState initialState)
      : super(initialState) {
    on<MyPageNoticesOneInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageNoticesOneInitialEvent event,
    Emitter<MyPageNoticesOneState> emit,
  ) async {
    emit(state.copyWith(
        mypageNoticesOneModelObj: state.mypageNoticesOneModelObj
            ?.copyWith(listItemList: fillListItemList())));
  }

  List<ListItemModel> fillListItemList() {
    return List.generate(9, (index) => ListItemModel());
  }
}
