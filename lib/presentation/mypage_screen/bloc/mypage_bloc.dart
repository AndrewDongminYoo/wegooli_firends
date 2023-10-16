// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_screen/models/mypage_model.dart';

part 'mypage_event.dart';
part 'mypage_state.dart';

/// A bloc that manages the state of a MyPage according to the event that is dispatched to it.
class MyPageBloc extends Bloc<MyPageEvent, MyPageState> {
  MyPageBloc(MyPageState initialState) : super(initialState) {
    on<MyPageInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    MyPageInitialEvent event,
    Emitter<MyPageState> emit,
  ) async {}
}
