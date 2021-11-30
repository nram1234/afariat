
import 'dart:developer' as developer;

import 'package:dio/dio.dart';


class AllNetworkingReq {
 // String baseurl = "https://afariat.com/api/v1";
  static BaseOptions options = BaseOptions(
      baseUrl: "https://afariat.com/api/v1" );
 Dio _dio =Dio(options );
Future getadverts()async{
  _dio.get("adverts")
}

}
