// ignore_for_file: must_be_immutable

part of 'one2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// One2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One2Event extends Equatable {}

/// Event that is dispatched when the One2 widget is first created.
class One2InitialEvent extends One2Event {
  @override
  List<Object?> get props => [];
}
