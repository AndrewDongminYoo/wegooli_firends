// ignore_for_file: must_be_immutable

part of 'mypage_contact_us_inquiry_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MypageContactUsInquiryHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MypageContactUsInquiryHistoryEvent extends Equatable {}

/// Event that is dispatched when the MypageContactUsInquiryHistory widget is first created.
class MypageContactUsInquiryHistoryInitialEvent
    extends MypageContactUsInquiryHistoryEvent {
  @override
  List<Object?> get props => [];
}
