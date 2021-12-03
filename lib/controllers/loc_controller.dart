


import 'package:afariat/networking/apis/ref_api.dart';
import 'package:afariat/networking/jsonfile/cities_json.dart';
import 'package:afariat/networking/jsonfile/ref_json.dart';
import 'package:afariat/networking/jsonfile/towns_json.dart';
import 'package:get/get.dart';

class LocController extends GetxController{
  final CityApi _cityApi=CityApi();
  final TownApi _townsApi=TownApi();
  List<RefJson> cities=[];
  RefJson citie;
  List<RefJson> towns=[];
  RefJson town;
  @override
  void onInit() {
    super.onInit();
    _cityApi.getList().then((value) {

     cities=value.data  ;
      update();
    });
  }
  updatecitie(RefJson ci){
  citie=ci;
  town=null;
  updateTowns( ci.id.toString());
update();
}
  updatetown(RefJson tow){
    town=tow;

    update();
  }
updateTowns(id){

  _townsApi.getList( id: id ).then((value) {
    towns=value.data;
    update();
  });
}

}