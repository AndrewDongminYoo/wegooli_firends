// ignore_for_file: must_be_immutable

part of 'k49_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K49 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K49Event extends Equatable {}

/// Event that is dispatched when the K49 widget is first created.
class K49InitialEvent extends K49Event {
  @override
  List<Object?> get props => [];
}
