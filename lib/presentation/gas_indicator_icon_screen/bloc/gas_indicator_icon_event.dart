// ignore_for_file: must_be_immutable

part of 'gas_indicator_icon_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// GasIndicatorIcon widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GasIndicatorIconEvent extends Equatable {}

/// Event that is dispatched when the GasIndicatorIcon widget is first created.
class GasIndicatorIconInitialEvent extends GasIndicatorIconEvent {
  @override
  List<Object?> get props => [];
}
