import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k64_screen/models/k64_model.dart';part 'k64_event.dart';part 'k64_state.dart';/// A bloc that manages the state of a K64 according to the event that is dispatched to it.
class K64Bloc extends Bloc<K64Event, K64State> {K64Bloc(K64State initialState) : super(initialState) { on<K64InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); on<ChangeDropDown2Event>(_changeDropDown2); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K64State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<K64State> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
_changeDropDown2(ChangeDropDown2Event event, Emitter<K64State> emit, ) { emit(state.copyWith(selectedDropDownValue2: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: 'Item One', isSelected: true), SelectionPopupModel(id: 2, title: 'Item Two'), SelectionPopupModel(id: 3, title: 'Item Three')]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: 'Item One', isSelected: true), SelectionPopupModel(id: 2, title: 'Item Two'), SelectionPopupModel(id: 3, title: 'Item Three')]; } 
List<SelectionPopupModel> fillDropdownItemList2() { return [SelectionPopupModel(id: 1, title: 'Item One', isSelected: true), SelectionPopupModel(id: 2, title: 'Item Two'), SelectionPopupModel(id: 3, title: 'Item Three')]; } 
_onInitialize(K64InitialEvent event, Emitter<K64State> emit, ) async  { emit(state.copyWith(licensenumberonController: TextEditingController(), expirationdateoController: TextEditingController(), issuancedateonlController: TextEditingController())); emit(state.copyWith(k64ModelObj: state.k64ModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1(), dropdownItemList2: fillDropdownItemList2()))); } 
 }
