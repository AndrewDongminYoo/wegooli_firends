// ignore_for_file: must_be_immutable

part of 'mypage_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageProfileEvent extends Equatable {}

/// Event that is dispatched when the MyPageProfile widget is first created.
class MyPageProfileInitialEvent extends MyPageProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MyPageProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends MyPageProfileEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends MyPageProfileEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
