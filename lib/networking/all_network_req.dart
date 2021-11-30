
import 'dart:developer' as developer;

import 'package:afariat/utilitie/setting_app.dart';
import 'package:dio/dio.dart';

import 'jsonfile/adverts_json.dart';


class AllNetworkingReq {
   String baseurl = "https://afariat.com/api/v1/";
  static BaseOptions options = BaseOptions(
      baseUrl: "https://afariat.com/api/v1" );
 final Dio _dio =Dio(options );

Future <AdvertsJson> getadverts()async{
  AdvertsJson advertsJson;
  final formData = {

    "apikey": SettingApp.apiKey,
  };
 await _dio.get("/adverts",queryParameters: formData).then((value) {
  advertsJson=Adverts.fromJson(json);
  });
  return advertsJson;
}

}
