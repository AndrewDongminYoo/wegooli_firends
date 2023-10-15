// ignore_for_file: must_be_immutable

part of 'signup_complete_bloc.dart';

/// Represents the state of SignupComplete in the application.
class SignupCompleteState extends Equatable {
  SignupCompleteState({this.signupCompleteModelObj});

  SignupCompleteModel? signupCompleteModelObj;

  @override
  List<Object?> get props => [
        signupCompleteModelObj,
      ];
  SignupCompleteState copyWith({SignupCompleteModel? signupCompleteModelObj}) {
    return SignupCompleteState(
      signupCompleteModelObj:
          signupCompleteModelObj ?? this.signupCompleteModelObj,
    );
  }
}
