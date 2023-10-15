// ignore_for_file: must_be_immutable

part of 'k101_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K101 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K101Event extends Equatable {}

/// Event that is dispatched when the K101 widget is first created.
class K101InitialEvent extends K101Event {
  @override
  List<Object?> get props => [];
}
