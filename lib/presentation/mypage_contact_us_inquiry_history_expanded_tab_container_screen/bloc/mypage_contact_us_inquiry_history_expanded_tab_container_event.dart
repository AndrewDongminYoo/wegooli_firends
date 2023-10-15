// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageContactUsInquiryHistoryExpandedTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageContactUsInquiryHistoryExpandedTabContainerEvent
    extends Equatable {}

/// Event that is dispatched when the MypageContactUsInquiryHistoryExpandedTabContainer widget is first created.
class MypageContactUsInquiryHistoryExpandedTabContainerInitialEvent
    extends MypageContactUsInquiryHistoryExpandedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
