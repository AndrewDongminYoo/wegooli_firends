// ignore_for_file: must_be_immutable

part of 'k95_bloc.dart';

/// Represents the state of K95 in the application.
class K95State extends Equatable {
  K95State({
    this.tfController,
    this.k95ModelObj,
  });

  TextEditingController? tfController;

  K95Model? k95ModelObj;

  @override
  List<Object?> get props => [
        tfController,
        k95ModelObj,
      ];
  K95State copyWith({
    TextEditingController? tfController,
    K95Model? k95ModelObj,
  }) {
    return K95State(
      tfController: tfController ?? this.tfController,
      k95ModelObj: k95ModelObj ?? this.k95ModelObj,
    );
  }
}
