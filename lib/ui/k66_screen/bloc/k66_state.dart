// ignore_for_file: must_be_immutable

part of 'k66_bloc.dart';

/// Represents the state of K66 in the application.
class K66State extends Equatable {
  K66State({this.k66ModelObj});

  K66Model? k66ModelObj;

  @override
  List<Object?> get props => [
        k66ModelObj,
      ];
  K66State copyWith({K66Model? k66ModelObj}) {
    return K66State(
      k66ModelObj: k66ModelObj ?? this.k66ModelObj,
    );
  }
}
