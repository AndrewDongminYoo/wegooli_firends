// ignore_for_file: must_be_immutable

part of 'mypage_notices_no_notice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// MyPageNoticesNoNotice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageNoticesNoNoticeEvent extends Equatable {}

/// Event that is dispatched when the MyPageNoticesNoNotice widget is first created.
class MyPageNoticesNoNoticeInitialEvent extends MyPageNoticesNoNoticeEvent {
  @override
  List<Object?> get props => [];
}
