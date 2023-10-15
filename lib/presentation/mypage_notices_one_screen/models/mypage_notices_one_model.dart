// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'list_item_model.dart';/// This class defines the variables used in the [mypage_notices_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MypageNoticesOneModel extends Equatable {MypageNoticesOneModel({this.listItemList = const []}) {  }

List<ListItemModel> listItemList;

MypageNoticesOneModel copyWith({List<ListItemModel>? listItemList}) { return MypageNoticesOneModel(
listItemList : listItemList ?? this.listItemList,
); } 
@override List<Object?> get props => [listItemList];
 }