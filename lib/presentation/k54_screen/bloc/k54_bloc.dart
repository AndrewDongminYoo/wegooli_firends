import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:wegooli_friends_app/presentation/k54_screen/models/k54_model.dart';part 'k54_event.dart';part 'k54_state.dart';/// A bloc that manages the state of a K54 according to the event that is dispatched to it.
class K54Bloc extends Bloc<K54Event, K54State> {K54Bloc(K54State initialState) : super(initialState) { on<K54InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); on<ChangeDropDown2Event>(_changeDropDown2); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K54State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<K54State> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
_changeDropDown2(ChangeDropDown2Event event, Emitter<K54State> emit, ) { emit(state.copyWith(selectedDropDownValue2: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList2() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(K54InitialEvent event, Emitter<K54State> emit, ) async  { emit(state.copyWith(licensenumberController: TextEditingController(), tfController: TextEditingController(), licensenumberController1: TextEditingController())); emit(state.copyWith(k54ModelObj: state.k54ModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1(), dropdownItemList2: fillDropdownItemList2()))); } 
 }
