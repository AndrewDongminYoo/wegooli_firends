// ignore_for_file: must_be_immutable

part of 'k80_bloc.dart';

/// Represents the state of K80 in the application.
class K80State extends Equatable {
  K80State({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.k80ModelObj,
  });

  K80Model? k80ModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        k80ModelObj,
      ];
  K80State copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    K80Model? k80ModelObj,
  }) {
    return K80State(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      k80ModelObj: k80ModelObj ?? this.k80ModelObj,
    );
  }
}
