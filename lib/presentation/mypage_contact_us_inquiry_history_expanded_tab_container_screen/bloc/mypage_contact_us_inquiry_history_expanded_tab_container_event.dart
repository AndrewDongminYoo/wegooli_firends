// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyPageContactUsInquiryHistoryExpandedTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyPageContactUsInquiryHistoryExpandedTabContainerEvent
    extends Equatable {}

/// Event that is dispatched when the MyPageContactUsInquiryHistoryExpandedTabContainer widget is first created.
class MyPageContactUsInquiryHistoryExpandedTabContainerInitialEvent
    extends MyPageContactUsInquiryHistoryExpandedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
