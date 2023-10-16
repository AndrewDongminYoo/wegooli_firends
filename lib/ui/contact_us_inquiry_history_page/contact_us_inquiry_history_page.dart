// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../contact_us_inquiry_history_page/widgets/list_item_widget.dart';
import '/core/app_export.dart';
import 'controller/contact_us_inquiry_history_controller.dart';
import 'models/contact_us_inquiry_history_model.dart';

class ContactUsInquiryHistoryPage extends StatelessWidget {
  ContactUsInquiryHistoryPage({Key? key})
      : super(key: key);

  ContactUsInquiryHistoryController controller = Get.put(
      ContactUsInquiryHistoryController(ContactUsInquiryHistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.shadow,
          child: Obx(
            () => ListView.separated(
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
              itemCount: controller.contactUsInquiryHistoryModelObj.value
                  .listItemList.value.length,
              itemBuilder: (context, index) {
                final model = controller.contactUsInquiryHistoryModelObj.value
                    .listItemList.value[index];
                return ListItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
