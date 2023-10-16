import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/widgets/userquery_item_widget.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/bloc/mypage_contact_us_inquiry_history_bloc.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/models/mypage_contact_us_inquiry_history_model.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_page/models/userquery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyPageContactUsInquiryHistoryPage extends StatefulWidget {
  const MyPageContactUsInquiryHistoryPage({Key? key}) : super(key: key);

  @override
  MyPageContactUsInquiryHistoryPageState createState() =>
      MyPageContactUsInquiryHistoryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageContactUsInquiryHistoryBloc>(
      create: (context) =>
          MyPageContactUsInquiryHistoryBloc(MyPageContactUsInquiryHistoryState(
        mypageContactUsInquiryHistoryModelObj:
            MyPageContactUsInquiryHistoryModel(),
      ))
            ..add(MyPageContactUsInquiryHistoryInitialEvent()),
      child: const MyPageContactUsInquiryHistoryPage(),
    );
  }
}

class MyPageContactUsInquiryHistoryPageState
    extends State<MyPageContactUsInquiryHistoryPage>
    with AutomaticKeepAliveClientMixin<MyPageContactUsInquiryHistoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: BlocSelector<
              MyPageContactUsInquiryHistoryBloc,
              MyPageContactUsInquiryHistoryState,
              MyPageContactUsInquiryHistoryModel?>(
            selector: (state) => state.mypageContactUsInquiryHistoryModelObj,
            builder: (context, mypageContactUsInquiryHistoryModelObj) {
              return ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: mypageContactUsInquiryHistoryModelObj
                        ?.userqueryItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  final model = mypageContactUsInquiryHistoryModelObj
                          ?.userqueryItemList[index] ??
                      UserqueryItemModel();
                  return UserqueryItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
