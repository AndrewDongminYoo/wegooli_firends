// ignore_for_file: must_be_immutable

part of 'k90_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K90 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K90Event extends Equatable {}

/// Event that is dispatched when the K90 widget is first created.
class K90InitialEvent extends K90Event {
  @override
  List<Object?> get props => [];
}
