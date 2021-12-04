
import 'package:afariat/networking/apis/advert_api.dart';
import 'package:afariat/networking/apis/ref_api.dart';
import 'package:afariat/networking/apis/trysearch.dart';
import 'package:afariat/networking/jsonfile/adverts_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class TapHomeViewController extends GetxController {
  AdvertApi _advertApi = AdvertApi();
  PriceApi _pricesApi = PriceApi();
TextEditingController searchWord=TextEditingController();
  //var box = GetStorage();
  bool getdatafromweb = true;
  List<AdvertJson> adverts = [];
  List<dynamic> prices = [];
  int maxValue = 20;
  int minValue = 0;
  SfRangeValues values = SfRangeValues(0, 100000);
Map<String,dynamic> serchoption={};
  @override
  void onInit() {
    super.onInit();
    updatedata();
    getPriceList();
  }

  updatedata() async {
    await _advertApi.getList().then((value) {
      adverts = value.embedded.adverts;

      getdatafromweb = false;
    });
    update();
  }

  filterupdate() {
    if(searchWord.text.isNotEmpty){
      setserchoption("search",searchWord.text.toString());
    }
     Search a=Search(serchoption);
    print(a.map);
    a.getList().then((value) {
      adverts=value.embedded.adverts;
      print(value.toString());
      update();
    });
  }

  getPriceList() async {
    await _pricesApi.getList().then((value) {
      prices = value.data;
      minValue = prices[0].id;
      maxValue = prices[prices.length-1].id;
      values = SfRangeValues(minValue, maxValue);
      print(prices[prices.length-1].id);
    });
    update();
  }
setserchoption(String key,v){
    serchoption[key]=v;
}
  updateslidval(value) {
    values = value;
    update();
  }
}
