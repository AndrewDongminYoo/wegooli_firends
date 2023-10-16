import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k73_screen/models/datecolumn1_item_model.dart';
import 'package:wegooli_friends_app/presentation/k73_screen/models/k73_model.dart';
part 'k73_event.dart';
part 'k73_state.dart';

/// A bloc that manages the state of a K73 according to the event that is dispatched to it.
class K73Bloc extends Bloc<K73Event, K73State> {
  K73Bloc(K73State initialState) : super(initialState) {
    on<K73InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K73InitialEvent event,
    Emitter<K73State> emit,
  ) async {
    emit(state.copyWith(
        k73ModelObj: state.k73ModelObj?.copyWith(
      datecolumn1ItemList: fillDatecolumn1ItemList(),
    )));
  }

  List<Datecolumn1ItemModel> fillDatecolumn1ItemList() {
    return List.generate(7, (index) => Datecolumn1ItemModel());
  }
}
