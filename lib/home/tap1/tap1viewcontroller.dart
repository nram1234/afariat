
import 'package:afariat/networking/all_network_req.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Tap1ViewController extends GetxController {
  AllNetworkingReq req=AllNetworkingReq();
  var box = GetStorage();
bool getdatafromweb=true;
//List<>
  @override
  void onInit() {
    super.onInit();
    updatedata();


  }

  updatedata() async {

//getdatafromweb=false;


req.getadverts();
      update();

  }
}
