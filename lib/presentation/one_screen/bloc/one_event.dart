// ignore_for_file: must_be_immutable

part of 'one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OneEvent extends Equatable {}

/// Event that is dispatched when the One widget is first created.
class OneInitialEvent extends OneEvent {
  @override
  List<Object?> get props => [];
}
