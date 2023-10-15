// ignore_for_file: must_be_immutable

part of 'one2_bloc.dart';

/// Represents the state of One2 in the application.
class One2State extends Equatable {
  One2State({this.one2ModelObj});

  One2Model? one2ModelObj;

  @override
  List<Object?> get props => [
        one2ModelObj,
      ];
  One2State copyWith({One2Model? one2ModelObj}) {
    return One2State(
      one2ModelObj: one2ModelObj ?? this.one2ModelObj,
    );
  }
}
