// ignore_for_file: must_be_immutable

part of 'two1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Two1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Two1Event extends Equatable {}

/// Event that is dispatched when the Two1 widget is first created.
class Two1InitialEvent extends Two1Event {
  @override
  List<Object?> get props => [];
}
