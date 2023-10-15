// ignore_for_file: must_be_immutable

part of 'k78_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K78 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K78Event extends Equatable {}

/// Event that is dispatched when the K78 widget is first created.
class K78InitialEvent extends K78Event {
  @override
  List<Object?> get props => [];
}
