// ignore_for_file: must_be_immutable

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/presentation/mypage_notices_one_screen/models/list_item_model.dart';

/// This class defines the variables used in the [mypage_notices_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPageNoticesOneModel extends Equatable {
  MyPageNoticesOneModel({this.listItemList = const []});

  List<ListItemModel> listItemList;

  MyPageNoticesOneModel copyWith({List<ListItemModel>? listItemList}) {
    return MyPageNoticesOneModel(
      listItemList: listItemList ?? this.listItemList,
    );
  }

  @override
  List<Object?> get props => [listItemList];
}
