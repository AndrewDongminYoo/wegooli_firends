// ignore_for_file: must_be_immutable

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/ui/mypage_notices_screen/models/mypage_notices_item_model.dart';

/// This class defines the variables used in the [mypage_notices_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPageNoticesModel extends Equatable {
  MyPageNoticesModel({this.mypageNoticesItemList = const []});

  List<MyPageNoticesItemModel> mypageNoticesItemList;

  MyPageNoticesModel copyWith(
      {List<MyPageNoticesItemModel>? mypageNoticesItemList}) {
    return MyPageNoticesModel(
      mypageNoticesItemList:
          mypageNoticesItemList ?? this.mypageNoticesItemList,
    );
  }

  @override
  List<Object?> get props => [mypageNoticesItemList];
}