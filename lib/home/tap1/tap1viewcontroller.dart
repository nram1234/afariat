
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Tap1ViewController extends GetxController {

  var box = GetStorage();
bool getdatafromweb=true;
  @override
  void onInit() {
    super.onInit();


  }

  updatedata() async {

getdatafromweb=false;

      update();

  }
}
