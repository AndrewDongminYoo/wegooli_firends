import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_screen/models/mypage_model.dart';
part 'mypage_event.dart';
part 'mypage_state.dart';

/// A bloc that manages the state of a MyPage according to the event that is dispatched to it.
class MyPageBloc extends Bloc<MyPageEvent, MyPageState> {
  MyPageBloc(MyPageState initialState) : super(initialState) {
    on<MyPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyPageInitialEvent event,
    Emitter<MyPageState> emit,
  ) async {}
}
