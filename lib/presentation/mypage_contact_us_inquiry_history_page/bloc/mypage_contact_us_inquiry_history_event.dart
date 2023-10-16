// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// MyPageContactUsInquiryHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageContactUsInquiryHistoryEvent extends Equatable {}

/// Event that is dispatched when the MyPageContactUsInquiryHistory widget is first created.
class MyPageContactUsInquiryHistoryInitialEvent
    extends MyPageContactUsInquiryHistoryEvent {
  @override
  List<Object?> get props => [];
}
