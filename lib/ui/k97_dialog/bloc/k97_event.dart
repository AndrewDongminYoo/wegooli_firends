// ignore_for_file: must_be_immutable

part of 'k97_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K97 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K97Event extends Equatable {}

/// Event that is dispatched when the K97 widget is first created.
class K97InitialEvent extends K97Event {
  @override
  List<Object?> get props => [];
}
