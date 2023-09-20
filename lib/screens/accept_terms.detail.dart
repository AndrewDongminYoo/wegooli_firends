// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class AcceptTermsDetail extends StatefulWidget {
  const AcceptTermsDetail({
    Key? key,
    this.index,
  }) : super(key: key);
  final int? index;
  @override
  State<AcceptTermsDetail> createState() => _AcceptTermsDetailState();
}

class _AcceptTermsDetailState extends State<AcceptTermsDetail> {
  final controller = UserController();
  final scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    print(Get.arguments);
    int index;
    if (Get.arguments['page'] != null) {
      index = int.parse(Get.arguments['page']);
    } else if (widget.index != null) {
      index = widget.index!;
    } else {
      index = 0;
    }
    final term = controller.terms[index];
    return Scaffold(
      appBar: CustomAppBar.getDefaultAppBar(term.title),
      body: Markdown(
        controller: scroll,
        data: term.body,
        styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
        physics: const BouncingScrollPhysics(),
        padding: getPadding(all: 20),
      ),
    );
  }
}
