// ignore_for_file: must_be_immutable

part of 'k66_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K66 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K66Event extends Equatable {}

/// Event that is dispatched when the K66 widget is first created.
class K66InitialEvent extends K66Event {
  @override
  List<Object?> get props => [];
}
