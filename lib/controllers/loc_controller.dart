import 'package:afariat/networking/all_network_req.dart';

import 'package:afariat/networking/jsonfile/cities_json.dart';
import 'package:afariat/networking/jsonfile/towns_json.dart';
import 'package:get/get.dart';

class LocController extends GetxController{
  final AllNetworkingReq _allNetworkingReq=AllNetworkingReq();
  List<Citie> cities;
  Citie citie;
  List<Town> data;
  @override
  void onInit() {
    super.onInit();
    _allNetworkingReq.cities().then((value) {
      cities=value.data;
      update();
    });
  }
  updatecitie(Citie ci){
  citie=ci;
  updateTowns( ci.id);
update();
}

updateTowns(id){
  _allNetworkingReq.towns(id).then((value) {
    data=value.data;
    update();
  });
}

}