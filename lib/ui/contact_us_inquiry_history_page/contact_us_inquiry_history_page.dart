// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/contact_us_inquiry_history_page/widgets/list_item_widget.dart';
import 'controller/contact_us_inquiry_history_controller.dart';
import 'models/contact_us_inquiry_history_model.dart';

// ignore: must_be_immutable
class ContactUsInquiryHistoryPage extends StatelessWidget {
  ContactUsInquiryHistoryPage({super.key});

  final controller = Get.put(ContactUsHistoryController(HistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
          child: Obx(
            () => ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(height: 1.v);
              },
              itemCount: controller.history.value.items.value.length,
              itemBuilder: (context, index) {
                final model = controller.history.value.items.value[index];
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
