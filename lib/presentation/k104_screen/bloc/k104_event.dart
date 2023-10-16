// ignore_for_file: must_be_immutable

part of 'k104_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K104 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K104Event extends Equatable {}

/// Event that is dispatched when the K104 widget is first created.
class K104InitialEvent extends K104Event {
  @override
  List<Object?> get props => [];
}
