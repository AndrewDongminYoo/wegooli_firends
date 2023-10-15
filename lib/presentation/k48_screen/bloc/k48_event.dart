// ignore_for_file: must_be_immutable

part of 'k48_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K48 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K48Event extends Equatable {}

/// Event that is dispatched when the K48 widget is first created.
class K48InitialEvent extends K48Event {
  @override
  List<Object?> get props => [];
}
