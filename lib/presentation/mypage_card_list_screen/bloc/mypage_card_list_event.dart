// ignore_for_file: must_be_immutable

part of 'mypage_card_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageCardList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageCardListEvent extends Equatable {}

/// Event that is dispatched when the MyPageCardList widget is first created.
class MyPageCardListInitialEvent extends MyPageCardListEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends MyPageCardListEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends MyPageCardListEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
