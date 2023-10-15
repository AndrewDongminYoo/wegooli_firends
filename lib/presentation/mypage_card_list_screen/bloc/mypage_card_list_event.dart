// ignore_for_file: must_be_immutable

part of 'mypage_card_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageCardList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageCardListEvent extends Equatable {}

/// Event that is dispatched when the MypageCardList widget is first created.
class MypageCardListInitialEvent extends MypageCardListEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends MypageCardListEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends MypageCardListEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
