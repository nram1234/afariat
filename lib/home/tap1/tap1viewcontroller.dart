import 'package:afariat/networking/all_network_req.dart';
import 'package:afariat/networking/jsonfile/adverts_json.dart';
import 'package:afariat/networking/jsonfile/prices_json.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Tap1ViewController extends GetxController {
  AllNetworkingReq req = AllNetworkingReq();
  var box = GetStorage();
  bool getdatafromweb = true;
  List<Adverts> adverts=[];
  List<Prices> prices=[];
  Prices dropdownMaxValue;
  Prices dropdownminValue;
  @override
  void onInit() {
    super.onInit();
    updatedata();
    getPriceList();
  }

  updatedata() async {
    await req.getadverts().then((value) {
      adverts = value.embedded.adverts;
      getdatafromweb = false;
    });
    update();
  }

  getPriceList()async {
   await req.prices().then((value) {
     prices=value.data;

   });
   update();
  }
  updatdropdownMaxValue(Prices val){
     dropdownMaxValue=val;
     update();
  }
  updatdropdownminValue(Prices val){
    dropdownminValue=val;
    update();
  }
}
