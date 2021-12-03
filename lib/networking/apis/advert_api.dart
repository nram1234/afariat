

import 'package:afariat/config/setting_app.dart';
import 'package:afariat/networking/jsonfile/adverts_json.dart';

import 'api_manager.dart';

class AdvertApi extends ApiManager {
  @override
  String apiUrl( ) {
    return SettingsApp.advertUrl;
  }

  @override
  fromJson(data) {
    return AdvertListJson.fromJson(data);
  }

  @override
  Map<String, dynamic> queryParameters() {
Map<String, dynamic>map={};
return map;
  }
}
