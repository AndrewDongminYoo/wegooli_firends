// ignore_for_file: must_be_immutable

part of 'mypage_card_register_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageCardRegister widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageCardRegisterEvent extends Equatable {}

/// Event that is dispatched when the MypageCardRegister widget is first created.
class MypageCardRegisterInitialEvent extends MypageCardRegisterEvent {
  @override
  List<Object?> get props => [];
}
