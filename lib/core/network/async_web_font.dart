// 🐦 Flutter imports:
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/lib.dart';

/// loadFont 함수는 지정된 fontFamily 및 URL을 사용하여 글꼴을 비동기식으로 로드
///
/// @param [String] fontFamily 로드할 글꼴 모음의 이름을 나타내는 문자열
/// @param [List<String>] urls 로드해야 하는 글꼴 파일을 가리키는 URL 목록
Future<void> loadFont(String fontFamily, List<String> urls) async {
  final fontLoader = FontLoader(fontFamily);
  for (final e in urls) {
    fontLoader.addFont(_fetchFont(e));
  }
  await fontLoader.load();
}

/// 이 함수는 주어진 URL에서 글꼴 파일을 가져와 ByteData 객체로 반환
///
/// @param [String] url - 가져올 글꼴 파일의 URL을 나타내는 문자열
Future<ByteData> _fetchFont(String url) async {
  try {
    final uri = Uri.parse(url);
    final options = Options(responseType: ResponseType.bytes);
    final dioClient = Dio();
    final response = await dioClient.getUri<Uint8List>(uri, options: options);
    if (response.statusCode == 200) {
      return ByteData.sublistView(response.data!);
    } else {
      throw CustomException(
          'Failed to load font with code: ${response.statusCode}, error: ${response.statusMessage}');
    }
  } on Exception catch (e) {
    throw printDioException('_fetchFont', e);
  } catch (e) {
    throw CustomException(e.toString());
  }
}
