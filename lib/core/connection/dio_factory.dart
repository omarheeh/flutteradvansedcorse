import 'package:dio/dio.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();

      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      dio!.options.headers = {
        "Accept": "application/json", // تأكد من أنه مطلوب
      };

      return dio!;
    } else {
      return dio!;
    }
  }
}
