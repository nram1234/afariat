import 'package:afariat/config/dio_singleton.dart';
import 'package:afariat/config/setting_app.dart';
import 'package:afariat/networking/jsonfile/abstract_json_resource.dart';
import 'package:afariat/networking/jsonfile/categories_groupped_json.dart';

import 'api_manager.dart';


class CategoriesGrouppedApi extends ApiManager {


  @override
  AbstractJsonResource fromJson(data) {
    return CategoriesGroupedJsonList.fromJson(data);
  }

  @override
  String apiUrl({id}) {
    return SettingsApp.grouppedCategoriesUrl;
  }


}
