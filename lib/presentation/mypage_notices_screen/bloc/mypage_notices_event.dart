// ignore_for_file: must_be_immutable

part of 'mypage_notices_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageNotices widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageNoticesEvent extends Equatable {}

/// Event that is dispatched when the MyPageNotices widget is first created.
class MyPageNoticesInitialEvent extends MyPageNoticesEvent {
  @override
  List<Object?> get props => [];
}
