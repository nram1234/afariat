
import 'dart:developer' as developer;

import 'package:afariat/utilitie/setting_app.dart';
import 'package:dio/dio.dart';

import 'jsonfile/adverts_json.dart';
import 'jsonfile/categories_groupped_json.dart';
import 'jsonfile/prices_json.dart';


class AllNetworkingReq {
   String baseurl = "https://afariat.com/api/v1/";
  static BaseOptions options = BaseOptions(
      baseUrl: "https://afariat.com/api/v1" );
 final Dio _dio =Dio(options );

Future <AdvertsJson > getadverts()async{
  AdvertsJson  advertsJson  ;
  var data;
  final formData = {

    "apikey": SettingApp.apiKey,
  };

   await _dio.get(baseurl+"adverts",queryParameters: formData).then((value) {
    // print(value);
     data=value.data;
   });
  advertsJson=AdvertsJson.fromJson(data);
 // print(advertsJson);
  return advertsJson;
}
   Future <PricesJson > prices()async{
     PricesJson  advertsJson  ;
     var data;
     final formData = {

       "apikey": SettingApp.apiKey,
     };

     await _dio.get(baseurl+"simple/prices",queryParameters: formData).then((value) {

       data=value.data;
     });
     advertsJson=PricesJson.fromJson(data);

     return advertsJson;
   }
   Future <CategoriesGrouppedJson > categoriesGrouppedJson()async{
     CategoriesGrouppedJson  categoriesGrouppedJson  ;
     var data;
     final formData = {

       "apikey": SettingApp.apiKey,
     };

     await _dio.get(baseurl+"simple/categories-groupped",queryParameters: formData).then((value) {

       data=value.data;
       print(data);
     });
     categoriesGrouppedJson=CategoriesGrouppedJson.fromJson(data);

     return categoriesGrouppedJson;
   }
}
