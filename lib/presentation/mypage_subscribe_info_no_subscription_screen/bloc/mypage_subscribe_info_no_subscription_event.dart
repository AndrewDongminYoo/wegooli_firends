// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_no_subscription_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageSubscribeInfoNoSubscription widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageSubscribeInfoNoSubscriptionEvent extends Equatable {}

/// Event that is dispatched when the MypageSubscribeInfoNoSubscription widget is first created.
class MypageSubscribeInfoNoSubscriptionInitialEvent
    extends MypageSubscribeInfoNoSubscriptionEvent {
  @override
  List<Object?> get props => [];
}
