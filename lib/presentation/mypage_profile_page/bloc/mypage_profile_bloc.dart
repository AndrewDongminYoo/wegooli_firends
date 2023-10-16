// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_profile_page/models/mypage_profile_model.dart';

part 'mypage_profile_event.dart';
part 'mypage_profile_state.dart';

/// A bloc that manages the state of a MyPageProfile according to the event that is dispatched to it.
class MyPageProfileBloc extends Bloc<MyPageProfileEvent, MyPageProfileState> {
  MyPageProfileBloc(MyPageProfileState initialState) : super(initialState) {
    on<MyPageProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  Future<void> _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<MyPageProfileState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  Future<void> _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<MyPageProfileState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  Future<void> _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<MyPageProfileState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch2: event.value));
  }

  Future<void> _onInitialize(
    MyPageProfileInitialEvent event,
    Emitter<MyPageProfileState> emit,
  ) async {
    emit(state.copyWith(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        isSelectedSwitch2: false));
  }
}
