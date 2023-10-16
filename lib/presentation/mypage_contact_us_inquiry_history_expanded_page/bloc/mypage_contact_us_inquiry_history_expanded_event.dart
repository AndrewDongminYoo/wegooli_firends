// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageContactUsInquiryHistoryExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageContactUsInquiryHistoryExpandedEvent extends Equatable {}

/// Event that is dispatched when the MyPageContactUsInquiryHistoryExpanded widget is first created.
class MyPageContactUsInquiryHistoryExpandedInitialEvent
    extends MyPageContactUsInquiryHistoryExpandedEvent {
  @override
  List<Object?> get props => [];
}
