
import 'package:afariat/config/utilitie.dart';
import 'package:afariat/controllers/category_and_subcategory.dart';
import 'package:afariat/controllers/loc_controller.dart';
import 'package:afariat/home/tap_home/tap_home_viewcontroller.dart';
import 'package:afariat/mywidget/custmbutton.dart';
import 'package:afariat/networking/jsonfile/categories_groupped_json.dart';
import 'package:afariat/networking/jsonfile/cities_json.dart';
import 'package:afariat/networking/jsonfile/towns_json.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BottomSheetSearch extends StatelessWidget {


  final tap1ViewController = Get.find<TapHomeViewController>();

  // final categoryAndSubcategory = Get.find<CategoryAndSubcategory>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [   const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
              child: GetBuilder<LocController>(builder: (logic) {
                return Column(
                  children: [
                    DropdownButton<Citie>(
                      isExpanded: true,
                      value: logic.citie,

                      iconSize: 24,
                      elevation: 16,
                      onChanged: logic.updatecitie,
                      items: logic.cities
                          .map<DropdownMenuItem<Citie>>((Citie value) {
                        return DropdownMenuItem<Citie>(
                          value: value,
                          child: Text(value.name),
                        );
                      }).toList(),
                    ),
                    DropdownButton<Town>(
                      isExpanded: true,
                      value: logic.town,
                      iconSize: 24,
                      elevation: 16,
                      onChanged: logic.updatetown,
                      items: logic.towns
                          .map<DropdownMenuItem<Town>>(
                              (Town value) {
                            return DropdownMenuItem<Town>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                    )
                  ],
                );
              }),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Category",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
              child: GetBuilder<CategoryAndSubcategory>(builder: (logic) {
                return Column(
                  children: [
                    DropdownButton<Categories>(
                      isExpanded: true,
                      value: logic.categorie,

                      iconSize: 24,
                      elevation: 16,
                      onChanged: logic.updateCategorie,
                      items: logic.categories
                          .map<DropdownMenuItem<Categories>>((Categories value) {
                        return DropdownMenuItem<Categories>(
                          value: value,
                          child: Text(value.name),
                        );
                      }).toList(),
                    ),
                    DropdownButton<Subcategories>(
                      isExpanded: true,
                      value: logic.subcategories1,
                      iconSize: 24,
                      elevation: 16,
                      onChanged: logic.updateSupCategorie,
                      items: logic.listSubcategories
                          .map<DropdownMenuItem<Subcategories>>(
                              (Subcategories value) {
                            return DropdownMenuItem<Subcategories>(
                              value: value,
                              child: Text(value.name),
                            );
                          }).toList(),
                    )
                  ],
                );
              }),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Price Rate",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          GetBuilder<TapHomeViewController>(builder: (logic) {
            return SfRangeSlider(
              min: logic.minValue,
              max:  logic.maxValue,
              values: logic.values,

              showTicks: true,
              showLabels: true,
              enableTooltip: true,

              onChanged: logic.updateslidval,
            );
          }),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomButton(
                  height: 50,
                  width: _size.width * .4,
                  function: () {},
                  labcolor: textbuttonColor,
                  label: "Search",
                  btcolor: buttonColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ],
            ),
          )         ],
      ),
    );
  }
}