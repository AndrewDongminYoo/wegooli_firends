// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_no_subscription_bloc.dart';

/// Represents the state of MypageSubscribeInfoNoSubscription in the application.
class MypageSubscribeInfoNoSubscriptionState extends Equatable {
  MypageSubscribeInfoNoSubscriptionState(
      {this.mypageSubscribeInfoNoSubscriptionModelObj});

  MypageSubscribeInfoNoSubscriptionModel?
      mypageSubscribeInfoNoSubscriptionModelObj;

  @override
  List<Object?> get props => [
        mypageSubscribeInfoNoSubscriptionModelObj,
      ];
  MypageSubscribeInfoNoSubscriptionState copyWith(
      {MypageSubscribeInfoNoSubscriptionModel?
          mypageSubscribeInfoNoSubscriptionModelObj}) {
    return MypageSubscribeInfoNoSubscriptionState(
      mypageSubscribeInfoNoSubscriptionModelObj:
          mypageSubscribeInfoNoSubscriptionModelObj ??
              this.mypageSubscribeInfoNoSubscriptionModelObj,
    );
  }
}
