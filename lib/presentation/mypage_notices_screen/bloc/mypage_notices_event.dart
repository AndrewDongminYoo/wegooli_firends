// ignore_for_file: must_be_immutable

part of 'mypage_notices_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageNotices widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageNoticesEvent extends Equatable {}

/// Event that is dispatched when the MypageNotices widget is first created.
class MypageNoticesInitialEvent extends MypageNoticesEvent {
  @override
  List<Object?> get props => [];
}
