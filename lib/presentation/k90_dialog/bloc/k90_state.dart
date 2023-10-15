// ignore_for_file: must_be_immutable

part of 'k90_bloc.dart';

/// Represents the state of K90 in the application.
class K90State extends Equatable {
  K90State({
    this.valueoneController,
    this.k90ModelObj,
  });

  TextEditingController? valueoneController;

  K90Model? k90ModelObj;

  @override
  List<Object?> get props => [
        valueoneController,
        k90ModelObj,
      ];
  K90State copyWith({
    TextEditingController? valueoneController,
    K90Model? k90ModelObj,
  }) {
    return K90State(
      valueoneController: valueoneController ?? this.valueoneController,
      k90ModelObj: k90ModelObj ?? this.k90ModelObj,
    );
  }
}
