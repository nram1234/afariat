
import 'package:afariat/config/setting_app.dart';
import 'package:afariat/networking/jsonfile/abstract_json_resource.dart';
import 'package:afariat/networking/jsonfile/ref_json.dart';

import 'api_manager.dart';

abstract class RefApi extends ApiManager {
  @override
  AbstractJsonResource fromJson(data) {
    return RefListJson.fromJson(data);
  }
}

//Geoloc
class CityApi extends RefApi {
  @override
  String apiUrl() => SettingsApp.cityUrl;

  @override
  Map<String, dynamic> queryParameters() {
    Map<String, dynamic>map={};
    return map;
  }
}

class TownApi extends RefApi {
  @override
  String apiUrl() => SettingsApp.townUrl;

  @override
  Map<String, dynamic> queryParameters() {
    Map<String, dynamic>map={};
    return map;
  }

}

//Refs
class PriceApi extends RefApi {
  @override
  String apiUrl() => SettingsApp.priceUrl;

  @override
  Map<String, dynamic> queryParameters() {
    Map<String, dynamic>map={};
    return map;
  }
}
