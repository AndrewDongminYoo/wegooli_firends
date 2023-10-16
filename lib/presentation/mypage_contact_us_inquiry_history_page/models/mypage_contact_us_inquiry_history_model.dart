// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/models/userquery_item_model.dart';/// This class defines the variables used in the [mypage_contact_us_inquiry_history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPageContactUsInquiryHistoryModel extends Equatable {MyPageContactUsInquiryHistoryModel({this.userqueryItemList = const []});

List<UserqueryItemModel> userqueryItemList;

MyPageContactUsInquiryHistoryModel copyWith({List<UserqueryItemModel>? userqueryItemList}) { return MyPageContactUsInquiryHistoryModel(
userqueryItemList : userqueryItemList ?? this.userqueryItemList,
); }
@override List<Object?> get props => [userqueryItemList];
 }
