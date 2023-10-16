// ignore_for_file: must_be_immutable

part of 'k108_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K108 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K108Event extends Equatable {}

/// Event that is dispatched when the K108 widget is first created.
class K108InitialEvent extends K108Event {
  @override
  List<Object?> get props => [];
}
