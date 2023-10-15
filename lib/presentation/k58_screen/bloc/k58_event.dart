// ignore_for_file: must_be_immutable

part of 'k58_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K58 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K58Event extends Equatable {}

/// Event that is dispatched when the K58 widget is first created.
class K58InitialEvent extends K58Event {
  @override
  List<Object?> get props => [];
}
