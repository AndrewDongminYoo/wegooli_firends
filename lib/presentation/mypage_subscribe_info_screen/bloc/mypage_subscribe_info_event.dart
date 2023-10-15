// ignore_for_file: must_be_immutable

part of 'mypage_subscribe_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageSubscribeInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageSubscribeInfoEvent extends Equatable {}

/// Event that is dispatched when the MypageSubscribeInfo widget is first created.
class MypageSubscribeInfoInitialEvent extends MypageSubscribeInfoEvent {
  @override
  List<Object?> get props => [];
}
