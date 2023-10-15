// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_empty_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageContactUsEmptyHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageContactUsEmptyHistoryEvent extends Equatable {}

/// Event that is dispatched when the MypageContactUsEmptyHistory widget is first created.
class MypageContactUsEmptyHistoryInitialEvent
    extends MypageContactUsEmptyHistoryEvent {
  @override
  List<Object?> get props => [];
}
