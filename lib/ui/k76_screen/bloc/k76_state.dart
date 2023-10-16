// ignore_for_file: must_be_immutable

part of 'k76_bloc.dart';

/// Represents the state of K76 in the application.
class K76State extends Equatable {
  K76State({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.k76ModelObj,
  });

  K76Model? k76ModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        k76ModelObj,
      ];
  K76State copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    K76Model? k76ModelObj,
  }) {
    return K76State(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      k76ModelObj: k76ModelObj ?? this.k76ModelObj,
    );
  }
}
