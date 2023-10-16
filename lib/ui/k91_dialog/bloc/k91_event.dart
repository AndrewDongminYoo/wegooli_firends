// ignore_for_file: must_be_immutable

part of 'k91_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K91 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K91Event extends Equatable {}

/// Event that is dispatched when the K91 widget is first created.
class K91InitialEvent extends K91Event {
  @override
  List<Object?> get props => [];
}
