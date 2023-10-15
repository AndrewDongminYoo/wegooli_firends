// ignore_for_file: must_be_immutable

part of 'mypage_notices_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageNoticesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageNoticesOneEvent extends Equatable {}

/// Event that is dispatched when the MypageNoticesOne widget is first created.
class MypageNoticesOneInitialEvent extends MypageNoticesOneEvent {
  @override
  List<Object?> get props => [];
}
