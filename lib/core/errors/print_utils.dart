// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/lib.dart';

CustomException handleException(String functionName, Exception e) {
  if (e is DioException) {
    final message = switch (e.type) {
      DioExceptionType.connectionError => e.message ?? '연결 오류가 발생했습니다.',
      DioExceptionType.connectionTimeout =>
        e.message ?? '요청 연결이 5000ms보다 오래 걸렸습니다.',
      DioExceptionType.sendTimeout =>
        e.message ?? '요청이 데이터를 전송하는 데 timeout 보다 오래 걸렸습니다.',
      DioExceptionType.receiveTimeout =>
        e.message ?? '데이터를 받는 데 3000ms 보다 오래 걸렸습니다.',
      DioExceptionType.badCertificate => e.message ?? '요청에 잘못된 인가 코드를 사용했습니다.',
      DioExceptionType.badResponse => e.message ?? '요청에서 잘못된 상태 코드를 반환했습니다.',
      DioExceptionType.cancel => e.message ?? '요청이 취소되었습니다.',
      DioExceptionType.unknown =>
        'message: ${e.message}\nerror: ${e.error}\nresponseData: ${e.response?.data}',
    };
    print('`$functionName()` : $message');
    return CustomException(message);
  } else {
    print('`$functionName` 호출 중 Exception 발생: $e\n');
    return CustomException(e.toString());
  }
}
