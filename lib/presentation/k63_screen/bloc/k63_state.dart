// ignore_for_file: must_be_immutable

part of 'k63_bloc.dart';

/// Represents the state of K63 in the application.
class K63State extends Equatable {
  K63State({
    this.tfController,
    this.oneController,
    this.twoController,
    this.threeController,
    this.k63ModelObj,
  });

  TextEditingController? tfController;

  TextEditingController? oneController;

  TextEditingController? twoController;

  TextEditingController? threeController;

  K63Model? k63ModelObj;

  @override
  List<Object?> get props => [
        tfController,
        oneController,
        twoController,
        threeController,
        k63ModelObj,
      ];
  K63State copyWith({
    TextEditingController? tfController,
    TextEditingController? oneController,
    TextEditingController? twoController,
    TextEditingController? threeController,
    K63Model? k63ModelObj,
  }) {
    return K63State(
      tfController: tfController ?? this.tfController,
      oneController: oneController ?? this.oneController,
      twoController: twoController ?? this.twoController,
      threeController: threeController ?? this.threeController,
      k63ModelObj: k63ModelObj ?? this.k63ModelObj,
    );
  }
}
