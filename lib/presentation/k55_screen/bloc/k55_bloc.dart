import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k55_screen/models/k55_model.dart';part 'k55_event.dart';part 'k55_state.dart';/// A bloc that manages the state of a K55 according to the event that is dispatched to it.
class K55Bloc extends Bloc<K55Event, K55State> {K55Bloc(K55State initialState) : super(initialState) { on<K55InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K55State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: 'Item One', isSelected: true), SelectionPopupModel(id: 2, title: 'Item Two'), SelectionPopupModel(id: 3, title: 'Item Three')]; } 
_onInitialize(K55InitialEvent event, Emitter<K55State> emit, ) async  { emit(state.copyWith(cardnumberoneController: TextEditingController(), expirationdateController: TextEditingController(), zipcodeController: TextEditingController(), edittextController: TextEditingController())); emit(state.copyWith(k55ModelObj: state.k55ModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
