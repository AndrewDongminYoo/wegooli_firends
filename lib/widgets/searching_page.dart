// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:daum_postcode_search/daum_postcode_search.dart';

class PostCodeSearchPage extends StatefulWidget {
  @override
  State<PostCodeSearchPage> createState() => _PostCodeSearchPageState();
}

class _PostCodeSearchPageState extends State<PostCodeSearchPage> {
  bool _isError = false;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    DaumPostcodeSearch daumPostcodeSearch = DaumPostcodeSearch(
        onConsoleMessage: (_, message) => print(message),
        onLoadError: (controller, uri, errorCode, message) => setState(() {
              _isError = true;
              errorMessage = message;
            }),
        onLoadHttpError: (controller, uri, errorCode, message) => setState(() {
              _isError = true;
              errorMessage = message;
            }));

    return Scaffold(
        appBar: AppBar(title: const Text("주소 검색 페이지입니다."), centerTitle: true),
        body: Column(children: [
          Expanded(child: daumPostcodeSearch),
          Visibility(
              visible: _isError,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(errorMessage ?? ""),
                    ElevatedButton(
                        child: const Text("Refresh"),
                        onPressed: () {
                          daumPostcodeSearch.controller?.reload();
                        }),
                  ])),
        ]));
  }
}
