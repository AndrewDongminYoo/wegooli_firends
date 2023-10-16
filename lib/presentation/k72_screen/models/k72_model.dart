// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/presentation/k72_screen/models/userprofile1_item_model.dart';import 'package:wegooli_friends_app/presentation/k72_screen/models/datecolumn_item_model.dart';/// This class defines the variables used in the [k72_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K72Model extends Equatable {K72Model({this.userprofile1ItemList = const [], this.datecolumnItemList = const [], });

List<Userprofile1ItemModel> userprofile1ItemList;

List<DatecolumnItemModel> datecolumnItemList;

K72Model copyWith({List<Userprofile1ItemModel>? userprofile1ItemList, List<DatecolumnItemModel>? datecolumnItemList, }) { return K72Model(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
datecolumnItemList : datecolumnItemList ?? this.datecolumnItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList,datecolumnItemList];
 }
