// ignore_for_file: must_be_immutable

part of 'mypage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Mypage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageEvent extends Equatable {}

/// Event that is dispatched when the Mypage widget is first created.
class MypageInitialEvent extends MypageEvent {
  @override
  List<Object?> get props => [];
}
