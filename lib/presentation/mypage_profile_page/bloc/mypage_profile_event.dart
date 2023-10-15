// ignore_for_file: must_be_immutable

part of 'mypage_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageProfileEvent extends Equatable {}

/// Event that is dispatched when the MypageProfile widget is first created.
class MypageProfileInitialEvent extends MypageProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MypageProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends MypageProfileEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends MypageProfileEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
