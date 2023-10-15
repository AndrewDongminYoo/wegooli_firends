// ignore_for_file: must_be_immutable

part of 'k98_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K98 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K98Event extends Equatable {}

/// Event that is dispatched when the K98 widget is first created.
class K98InitialEvent extends K98Event {
  @override
  List<Object?> get props => [];
}
