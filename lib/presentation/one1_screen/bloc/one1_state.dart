// ignore_for_file: must_be_immutable

part of 'one1_bloc.dart';

/// Represents the state of One1 in the application.
class One1State extends Equatable {
  One1State({this.one1ModelObj});

  One1Model? one1ModelObj;

  @override
  List<Object?> get props => [
        one1ModelObj,
      ];
  One1State copyWith({One1Model? one1ModelObj}) {
    return One1State(
      one1ModelObj: one1ModelObj ?? this.one1ModelObj,
    );
  }
}
