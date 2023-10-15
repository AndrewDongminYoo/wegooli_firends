// ignore_for_file: must_be_immutable

part of 'one6_bloc.dart';

/// Represents the state of One6 in the application.
class One6State extends Equatable {
  One6State({this.one6ModelObj});

  One6Model? one6ModelObj;

  @override
  List<Object?> get props => [
        one6ModelObj,
      ];
  One6State copyWith({One6Model? one6ModelObj}) {
    return One6State(
      one6ModelObj: one6ModelObj ?? this.one6ModelObj,
    );
  }
}
