// ignore_for_file: must_be_immutable

part of 'k109_bloc.dart';

/// Represents the state of K109 in the application.
class K109State extends Equatable {
  K109State({this.k109ModelObj});

  K109Model? k109ModelObj;

  @override
  List<Object?> get props => [
        k109ModelObj,
      ];
  K109State copyWith({K109Model? k109ModelObj}) {
    return K109State(
      k109ModelObj: k109ModelObj ?? this.k109ModelObj,
    );
  }
}
