// ignore_for_file: must_be_immutable

part of 'expiring_subscriptions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// ExpiringSubscriptions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpiringSubscriptionsEvent extends Equatable {}

/// Event that is dispatched when the ExpiringSubscriptions widget is first created.
class ExpiringSubscriptionsInitialEvent extends ExpiringSubscriptionsEvent {
  @override
  List<Object?> get props => [];
}
