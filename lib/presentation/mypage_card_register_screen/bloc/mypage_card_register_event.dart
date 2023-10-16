// ignore_for_file: must_be_immutable

part of 'mypage_card_register_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// MyPageCardRegister widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageCardRegisterEvent extends Equatable {}

/// Event that is dispatched when the MyPageCardRegister widget is first created.
class MyPageCardRegisterInitialEvent extends MyPageCardRegisterEvent {
  @override
  List<Object?> get props => [];
}
