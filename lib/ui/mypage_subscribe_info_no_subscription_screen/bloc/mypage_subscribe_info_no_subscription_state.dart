// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_no_subscription_bloc.dart';

/// Represents the state of MyPageSubscribeInfoNoSubscription in the application.
class MyPageSubscribeInfoNoSubscriptionState extends Equatable {
  MyPageSubscribeInfoNoSubscriptionState(
      {this.mypageSubscribeInfoNoSubscriptionModelObj});

  MyPageSubscribeInfoNoSubscriptionModel?
      mypageSubscribeInfoNoSubscriptionModelObj;

  @override
  List<Object?> get props => [
        mypageSubscribeInfoNoSubscriptionModelObj,
      ];
  MyPageSubscribeInfoNoSubscriptionState copyWith(
      {MyPageSubscribeInfoNoSubscriptionModel?
          mypageSubscribeInfoNoSubscriptionModelObj}) {
    return MyPageSubscribeInfoNoSubscriptionState(
      mypageSubscribeInfoNoSubscriptionModelObj:
          mypageSubscribeInfoNoSubscriptionModelObj ??
              this.mypageSubscribeInfoNoSubscriptionModelObj,
    );
  }
}
