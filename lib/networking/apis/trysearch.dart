import 'package:afariat/config/setting_app.dart';
import 'package:afariat/networking/jsonfile/abstract_json_resource.dart';
import 'package:afariat/networking/jsonfile/adverts_json.dart';

import 'api_manager.dart';

class Search  extends ApiManager{
  Map <String,dynamic> map;

  Search(this.map);

  @override
  String apiUrl() {
    return SettingsApp.advertUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return AdvertListJson.fromJson(data);
  }

  @override
  Map<String, dynamic> queryParameters() {
    return map;
  }
}