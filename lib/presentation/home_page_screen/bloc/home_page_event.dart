// ignore_for_file: must_be_immutable

part of 'home_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageEvent extends Equatable {}

/// Event that is dispatched when the HomePage widget is first created.
class HomePageInitialEvent extends HomePageEvent {
  @override
  List<Object?> get props => [];
}
