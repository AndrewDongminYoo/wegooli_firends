// ignore_for_file: must_be_immutable

part of 'expiring_subscriptions_bloc.dart';

/// Represents the state of ExpiringSubscriptions in the application.
class ExpiringSubscriptionsState extends Equatable {
  ExpiringSubscriptionsState({this.expiringSubscriptionsModelObj});

  ExpiringSubscriptionsModel? expiringSubscriptionsModelObj;

  @override
  List<Object?> get props => [
        expiringSubscriptionsModelObj,
      ];
  ExpiringSubscriptionsState copyWith(
      {ExpiringSubscriptionsModel? expiringSubscriptionsModelObj}) {
    return ExpiringSubscriptionsState(
      expiringSubscriptionsModelObj:
          expiringSubscriptionsModelObj ?? this.expiringSubscriptionsModelObj,
    );
  }
}
