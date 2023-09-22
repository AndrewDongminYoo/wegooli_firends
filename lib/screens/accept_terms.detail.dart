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
    this.term,
  }) : super(key: key);
  final Term? term;
  @override
  State<AcceptTermsDetail> createState() => _AcceptTermsDetailState();
}

class _AcceptTermsDetailState extends State<AcceptTermsDetail> {
  final controller = UserController();
  final scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    print(Get.arguments);
    Term term;
    if (Get.arguments['page'] != null) {
      term = Get.arguments['page'];
    } else if (widget.term != null) {
      term = widget.term!;
    } else {
      term = controller.terms.first;
    }
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
