// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_markdown/flutter_markdown.dart';

// 🌎 Project imports:
import '/lib.dart';

class TermsOfUseView extends StatefulWidget {
  const TermsOfUseView({
    Key? key,
    required this.content,
    required this.title,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  _TermsOfUseViewState createState() => _TermsOfUseViewState();
}

class _TermsOfUseViewState extends State<TermsOfUseView> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar.getDefaultAppBar(widget.title),
      ),
      body: Markdown(
        controller: controller,
        selectable: false,
        data: widget.content,
        styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
        physics: BouncingScrollPhysics(),
        padding: getPadding(all: 20),
      ),
    );
  }
}
