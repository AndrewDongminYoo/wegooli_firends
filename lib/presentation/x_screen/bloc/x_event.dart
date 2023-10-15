// ignore_for_file: must_be_immutable

part of 'x_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///X widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class XEvent extends Equatable {}

/// Event that is dispatched when the X widget is first created.
class XInitialEvent extends XEvent {
  @override
  List<Object?> get props => [];
}
