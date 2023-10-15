// ignore_for_file: must_be_immutable

part of 'splash_screen_two_bloc.dart';

/// Represents the state of SplashScreenTwo in the application.
class SplashScreenTwoState extends Equatable {
  SplashScreenTwoState({this.splashScreenTwoModelObj});

  SplashScreenTwoModel? splashScreenTwoModelObj;

  @override
  List<Object?> get props => [
        splashScreenTwoModelObj,
      ];
  SplashScreenTwoState copyWith(
      {SplashScreenTwoModel? splashScreenTwoModelObj}) {
    return SplashScreenTwoState(
      splashScreenTwoModelObj:
          splashScreenTwoModelObj ?? this.splashScreenTwoModelObj,
    );
  }
}
