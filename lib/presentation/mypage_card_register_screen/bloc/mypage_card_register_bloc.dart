import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/mypage_card_register_screen/models/mypage_card_register_model.dart';part 'mypage_card_register_event.dart';part 'mypage_card_register_state.dart';/// A bloc that manages the state of a MypageCardRegister according to the event that is dispatched to it.
class MypageCardRegisterBloc extends Bloc<MypageCardRegisterEvent, MypageCardRegisterState> {MypageCardRegisterBloc(MypageCardRegisterState initialState) : super(initialState) { on<MypageCardRegisterInitialEvent>(_onInitialize); }

_onInitialize(MypageCardRegisterInitialEvent event, Emitter<MypageCardRegisterState> emit, ) async  { emit(state.copyWith(cardnumbervalueController: TextEditingController(), expirationdatevController: TextEditingController(), zipcodeController: TextEditingController(), edittextController: TextEditingController())); } 
 }
