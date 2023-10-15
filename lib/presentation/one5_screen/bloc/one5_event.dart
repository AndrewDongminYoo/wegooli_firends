// ignore_for_file: must_be_immutable

part of 'one5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One5 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One5Event extends Equatable {}

/// Event that is dispatched when the One5 widget is first created.
class One5InitialEvent extends One5Event {
  @override
  List<Object?> get props => [];
}
