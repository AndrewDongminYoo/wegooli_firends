// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../contact_us_inquiry_history_page/widgets/list_item_widget.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import 'controller/contact_us_inquiry_history_controller.dart';
import 'models/contact_us_inquiry_history_model.dart';

// ignore: must_be_immutable
class ContactUsInquiryHistoryPage extends StatelessWidget {
  ContactUsInquiryHistoryPage({Key? key}) : super(key: key);

  ContactUsInquiryHistoryController controller = Get.put(
      ContactUsInquiryHistoryController(ContactUsInquiryHistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: defaultColors.onPrimaryContainer,
          ),
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
              itemCount: controller
                  .contactUsInquiryHistory.value.listItemList.value.length,
              itemBuilder: (context, index) {
                final model = controller
                    .contactUsInquiryHistory.value.listItemList.value[index];
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
