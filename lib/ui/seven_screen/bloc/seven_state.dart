// ignore_for_file: must_be_immutable

part of 'seven_bloc.dart';

/// Represents the state of Seven in the application.
class SevenState extends Equatable {
  SevenState({
    this.idoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.sevenModelObj,
  });

  TextEditingController? idoneController;

  TextEditingController? passwordoneController;

  SevenModel? sevenModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        idoneController,
        passwordoneController,
        isShowPassword,
        sevenModelObj,
      ];
  SevenState copyWith({
    TextEditingController? idoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    SevenModel? sevenModelObj,
  }) {
    return SevenState(
      idoneController: idoneController ?? this.idoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      sevenModelObj: sevenModelObj ?? this.sevenModelObj,
    );
  }
}
