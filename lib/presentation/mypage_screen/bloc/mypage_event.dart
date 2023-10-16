// ignore_for_file: must_be_immutable

part of 'mypage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageEvent extends Equatable {}

/// Event that is dispatched when the MyPage widget is first created.
class MyPageInitialEvent extends MyPageEvent {
  @override
  List<Object?> get props => [];
}
