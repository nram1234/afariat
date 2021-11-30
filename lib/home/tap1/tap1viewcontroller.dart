
import 'package:afariat/networking/all_network_req.dart';
import 'package:afariat/networking/jsonfile/adverts_json.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Tap1ViewController extends GetxController {
  AllNetworkingReq req=AllNetworkingReq();
  var box = GetStorage();
bool getdatafromweb=true;
  List<Adverts> adverts;
  @override
  void onInit() {
    super.onInit();
    updatedata();


  }

  updatedata() async {

//getdatafromweb=false;


await req.getadverts().then((value) {
  adverts=  value.embedded.adverts;
});
      update();

  }
}
