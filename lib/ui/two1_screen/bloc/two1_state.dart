// ignore_for_file: must_be_immutable

part of 'two1_bloc.dart';

/// Represents the state of Two1 in the application.
class Two1State extends Equatable {
  Two1State({this.two1ModelObj});

  Two1Model? two1ModelObj;

  @override
  List<Object?> get props => [
        two1ModelObj,
      ];
  Two1State copyWith({Two1Model? two1ModelObj}) {
    return Two1State(
      two1ModelObj: two1ModelObj ?? this.two1ModelObj,
    );
  }
}
