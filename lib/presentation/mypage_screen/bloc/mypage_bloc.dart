import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_screen/models/mypage_model.dart';
part 'mypage_event.dart';
part 'mypage_state.dart';

/// A bloc that manages the state of a Mypage according to the event that is dispatched to it.
class MypageBloc extends Bloc<MypageEvent, MypageState> {
  MypageBloc(MypageState initialState) : super(initialState) {
    on<MypageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MypageInitialEvent event,
    Emitter<MypageState> emit,
  ) async {}
}
