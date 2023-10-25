// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/contact_us_history_page/widgets/list_item_widget.dart';
import 'controller/contact_us_history_controller.dart';

// ignore: must_be_immutable
class ContactUsHistoryPage extends StatelessWidget {
  ContactUsHistoryPage({super.key});

  final controller = ContactUsHistoryController.to;

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
