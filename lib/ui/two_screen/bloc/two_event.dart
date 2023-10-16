// ignore_for_file: must_be_immutable

part of 'two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Two widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwoEvent extends Equatable {}

/// Event that is dispatched when the Two widget is first created.
class TwoInitialEvent extends TwoEvent {
  @override
  List<Object?> get props => [];
}
