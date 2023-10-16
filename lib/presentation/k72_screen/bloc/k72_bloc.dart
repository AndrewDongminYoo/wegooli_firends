// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k72_screen/models/datecolumn_item_model.dart';
import '/presentation/k72_screen/models/k72_model.dart';
import '/presentation/k72_screen/models/userprofile1_item_model.dart';

part 'k72_event.dart';
part 'k72_state.dart';

/// A bloc that manages the state of a K72 according to the event that is dispatched to it.
class K72Bloc extends Bloc<K72Event, K72State> {
  K72Bloc(K72State initialState) : super(initialState) {
    on<K72InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K72InitialEvent event,
    Emitter<K72State> emit,
  ) async {
    emit(state.copyWith(
        k72ModelObj: state.k72ModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
      datecolumnItemList: fillDatecolumnItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return List.generate(4, (index) => Userprofile1ItemModel());
  }

  List<DatecolumnItemModel> fillDatecolumnItemList() {
    return List.generate(7, (index) => DatecolumnItemModel());
  }
}
