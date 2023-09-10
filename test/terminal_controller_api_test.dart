// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for TerminalControllerApi
void main() {
  final api = WegooliFriends().getTerminalControllerApi();

  group(TerminalControllerApi, () {
    //Future registTerminal(TerminalRequest terminalRequest) async
    test('test registTerminal', () async {
      // TODO
    });

    //Future<TerminalModel> selectTerminal(int seq) async
    test('test selectTerminal', () async {
      // TODO
    });

    //Future<BuiltList<TerminalModel>> selectTerminalList(TerminalRequest request) async
    test('test selectTerminalList', () async {
      // TODO
    });

    //Future updateTerminal(int seq, TerminalUpdateRequest terminalUpdateRequest) async
    test('test updateTerminal', () async {
      // TODO
    });
  });
}
