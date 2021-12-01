import 'package:afariat/networking/all_network_req.dart';
import 'package:get/get.dart';

class CategoryAndSubcategory extends GetxController{
  AllNetworkingReq _allNetworkingReq=AllNetworkingReq();

  @override
  void onInit() {
    super.onInit();
    _allNetworkingReq.categoriesGrouppedJson().then((value) {
      print(value.data);
    });
  }
}