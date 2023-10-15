// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageContactUsInquiryHistoryExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageContactUsInquiryHistoryExpandedEvent extends Equatable {}

/// Event that is dispatched when the MypageContactUsInquiryHistoryExpanded widget is first created.
class MypageContactUsInquiryHistoryExpandedInitialEvent
    extends MypageContactUsInquiryHistoryExpandedEvent {
  @override
  List<Object?> get props => [];
}
