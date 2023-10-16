// ignore_for_file: must_be_immutable

part of 'three_bloc.dart';

/// Represents the state of Three in the application.
class ThreeState extends Equatable {
  ThreeState({
    this.subscriptionInf = false,
    this.threeModelObj,
  });

  ThreeModel? threeModelObj;

  bool subscriptionInf;

  @override
  List<Object?> get props => [
        subscriptionInf,
        threeModelObj,
      ];
  ThreeState copyWith({
    bool? subscriptionInf,
    ThreeModel? threeModelObj,
  }) {
    return ThreeState(
      subscriptionInf: subscriptionInf ?? this.subscriptionInf,
      threeModelObj: threeModelObj ?? this.threeModelObj,
    );
  }
}
