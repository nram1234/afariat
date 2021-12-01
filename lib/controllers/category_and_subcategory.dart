import 'package:afariat/networking/all_network_req.dart';
import 'package:afariat/networking/jsonfile/categories_groupped_json.dart';
import 'package:get/get.dart';

class CategoryAndSubcategory extends GetxController{
  final AllNetworkingReq _allNetworkingReq=AllNetworkingReq();
  Map<int, List<Subcategories>> sc = {};
  List<Subcategories> listSubcategories = [];
  Subcategories subcategories1;
  List<Categories> categories = [];
  Categories categorie;
  @override
  void onInit() {
    super.onInit();
   _allNetworkingReq.categoriesGrouppedJson().then((value) {
      categories = value.data;
      for (var element in categories) {
        sc[element.id] = element.subcategories;
      }
      update();
    });
  }


  updateCategorie(Categories cat){
categorie=cat;
subcategories1 = null;
listSubcategories=  sc[cat.id];

 update();
  }
  updateSupCategorie(Subcategories cat){
    subcategories1=cat;

    update();

  }
}