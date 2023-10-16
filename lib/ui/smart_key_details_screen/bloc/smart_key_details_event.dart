// ignore_for_file: must_be_immutable

part of 'smart_key_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SmartKeyDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SmartKeyDetailsEvent extends Equatable {}

/// Event that is dispatched when the SmartKeyDetails widget is first created.
class SmartKeyDetailsInitialEvent extends SmartKeyDetailsEvent {
  @override
  List<Object?> get props => [];
}
