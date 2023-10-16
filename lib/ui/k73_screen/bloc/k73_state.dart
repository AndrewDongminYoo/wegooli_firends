// ignore_for_file: must_be_immutable

part of 'k73_bloc.dart';

/// Represents the state of K73 in the application.
class K73State extends Equatable {
  K73State({this.k73ModelObj});

  K73Model? k73ModelObj;

  @override
  List<Object?> get props => [
        k73ModelObj,
      ];
  K73State copyWith({K73Model? k73ModelObj}) {
    return K73State(
      k73ModelObj: k73ModelObj ?? this.k73ModelObj,
    );
  }
}
