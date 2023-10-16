// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageSubscribeInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageSubscribeInfoEvent extends Equatable {}

/// Event that is dispatched when the MyPageSubscribeInfo widget is first created.
class MyPageSubscribeInfoInitialEvent extends MyPageSubscribeInfoEvent {
  @override
  List<Object?> get props => [];
}
