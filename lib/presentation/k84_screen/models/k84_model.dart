// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [k84_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K84Model extends Equatable {K84Model({this.userprofile2ItemList = const []}) {  }

List<Userprofile2ItemModel> userprofile2ItemList;

K84Model copyWith({List<Userprofile2ItemModel>? userprofile2ItemList}) { return K84Model(
userprofile2ItemList : userprofile2ItemList ?? this.userprofile2ItemList,
); } 
@override List<Object?> get props => [userprofile2ItemList];
 }
