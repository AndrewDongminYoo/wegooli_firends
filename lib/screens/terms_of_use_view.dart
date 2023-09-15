// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class TermsOfUseView extends StatefulWidget {
  const TermsOfUseView({
    Key? key,
    this.index,
  }) : super(key: key);
  final int? index;
  @override
  State<TermsOfUseView> createState() => _TermsOfUseViewState();
}

class _TermsOfUseViewState extends State<TermsOfUseView> {
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
    final title = "[${term.opt ? '선택' : '필수'}] ${term.title}";
    final content = term.body;
    return Scaffold(
      appBar: CustomAppBar.getDefaultAppBar(title),
      body: Markdown(
        controller: scroll,
        data: content,
        styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
        physics: const BouncingScrollPhysics(),
        padding: getPadding(all: 20),
      ),
    );
  }
}
