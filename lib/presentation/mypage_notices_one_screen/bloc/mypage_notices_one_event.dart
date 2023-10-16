// ignore_for_file: must_be_immutable

part of 'mypage_notices_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageNoticesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageNoticesOneEvent extends Equatable {}

/// Event that is dispatched when the MyPageNoticesOne widget is first created.
class MyPageNoticesOneInitialEvent extends MyPageNoticesOneEvent {
  @override
  List<Object?> get props => [];
}
