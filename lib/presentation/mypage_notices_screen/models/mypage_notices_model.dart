// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'mypage_notices_item_model.dart';/// This class defines the variables used in the [mypage_notices_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MypageNoticesModel extends Equatable {MypageNoticesModel({this.mypageNoticesItemList = const []}) {  }

List<MypageNoticesItemModel> mypageNoticesItemList;

MypageNoticesModel copyWith({List<MypageNoticesItemModel>? mypageNoticesItemList}) { return MypageNoticesModel(
mypageNoticesItemList : mypageNoticesItemList ?? this.mypageNoticesItemList,
); } 
@override List<Object?> get props => [mypageNoticesItemList];
 }
