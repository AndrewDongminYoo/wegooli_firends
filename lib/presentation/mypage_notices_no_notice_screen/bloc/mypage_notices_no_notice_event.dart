// ignore_for_file: must_be_immutable

part of 'mypage_notices_no_notice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageNoticesNoNotice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageNoticesNoNoticeEvent extends Equatable {}

/// Event that is dispatched when the MypageNoticesNoNotice widget is first created.
class MypageNoticesNoNoticeInitialEvent extends MypageNoticesNoNoticeEvent {
  @override
  List<Object?> get props => [];
}
