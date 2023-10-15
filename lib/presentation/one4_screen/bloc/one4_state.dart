// ignore_for_file: must_be_immutable

part of 'one4_bloc.dart';

/// Represents the state of One4 in the application.
class One4State extends Equatable {
  One4State({this.one4ModelObj});

  One4Model? one4ModelObj;

  @override
  List<Object?> get props => [
        one4ModelObj,
      ];
  One4State copyWith({One4Model? one4ModelObj}) {
    return One4State(
      one4ModelObj: one4ModelObj ?? this.one4ModelObj,
    );
  }
}
