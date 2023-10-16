// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_empty_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// MyPageContactUsEmptyHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageContactUsEmptyHistoryEvent extends Equatable {}

/// Event that is dispatched when the MyPageContactUsEmptyHistory widget is first created.
class MyPageContactUsEmptyHistoryInitialEvent
    extends MyPageContactUsEmptyHistoryEvent {
  @override
  List<Object?> get props => [];
}
