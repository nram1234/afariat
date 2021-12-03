import 'package:afariat/config/setting_app.dart';
import 'package:dio/dio.dart';


class DioSingleton {
  Dio dio = Dio(BaseOptions(
      headers: {
        'apikey': SettingsApp.apiKey,
        'Content-Type': 'application/json; charset=UTF-8'
      }
  ));
  static final DioSingleton _singleton = DioSingleton._internal();

  factory DioSingleton() {
    return _singleton;
  }

  DioSingleton._internal();
}

