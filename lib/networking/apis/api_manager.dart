import 'package:afariat/config/dio_singleton.dart';

import 'package:afariat/networking/jsonfile/abstract_json_resource.dart';

abstract class ApiManager {
  final DioSingleton dioSingleton = DioSingleton();

  /// Returns the API URL of current API ressource
  String apiUrl();

  AbstractJsonResource fromJson(data);

  /// Get a list of json resource from remote API. E.g: Adverts or cities
  Future<dynamic> getList({id}) async {

    AbstractJsonResource jsonList;
    var data;
    await dioSingleton.dio.get(id==null?apiUrl():apiUrl()+id).then((value) {
      data = value.data;
    });
    jsonList = fromJson(data);

    return jsonList;
  }
}
