// ignore_for_file: must_be_immutable

part of 'k49_bloc.dart';

/// Represents the state of K49 in the application.
class K49State extends Equatable {
  K49State({this.k49ModelObj});

  K49Model? k49ModelObj;

  @override
  List<Object?> get props => [
        k49ModelObj,
      ];
  K49State copyWith({K49Model? k49ModelObj}) {
    return K49State(
      k49ModelObj: k49ModelObj ?? this.k49ModelObj,
    );
  }
}
