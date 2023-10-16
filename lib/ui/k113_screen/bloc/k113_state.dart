// ignore_for_file: must_be_immutable

part of 'k113_bloc.dart';

/// Represents the state of K113 in the application.
class K113State extends Equatable {
  K113State({this.k113ModelObj});

  K113Model? k113ModelObj;

  @override
  List<Object?> get props => [
        k113ModelObj,
      ];
  K113State copyWith({K113Model? k113ModelObj}) {
    return K113State(
      k113ModelObj: k113ModelObj ?? this.k113ModelObj,
    );
  }
}
