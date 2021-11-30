
import 'dart:developer' as developer;

import 'package:afariat/utilitie/setting_app.dart';
import 'package:dio/dio.dart';

import 'jsonfile/adverts_json.dart';


class AllNetworkingReq {
   String baseurl = "https://afariat.com/api/v1/";
  static BaseOptions options = BaseOptions(
      baseUrl: "https://afariat.com/api/v1" );
 Dio _dio =Dio(options );

Future  getadverts()async{
  final formData = {

    "apikey": SettingApp.apiKey,
  };
  _dio.get(baseurl+"/adverts",queryParameters: formData).then((value) {
    print("vvvvvvvvvvvvvvvvvvvvvvvvvvvv n${value.data}");
  });
}

}
