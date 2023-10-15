// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_1_1_contact_us_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageContactUs11ContactUs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageContactUs11ContactUsEvent extends Equatable {}

/// Event that is dispatched when the MypageContactUs11ContactUs widget is first created.
class MypageContactUs11ContactUsInitialEvent
    extends MypageContactUs11ContactUsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends MypageContactUs11ContactUsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
