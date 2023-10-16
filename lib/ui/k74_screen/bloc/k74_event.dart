// ignore_for_file: must_be_immutable

part of 'k74_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K74 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K74Event extends Equatable {}

/// Event that is dispatched when the K74 widget is first created.
class K74InitialEvent extends K74Event {
  @override
  List<Object?> get props => [];
}
