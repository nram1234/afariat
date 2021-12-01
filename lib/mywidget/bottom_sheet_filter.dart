import 'package:afariat/controllers/category_and_subcategory.dart';
import 'package:afariat/home/tap1/tap1viewcontroller.dart';
import 'package:afariat/networking/jsonfile/categories_groupped_json.dart';
import 'package:afariat/networking/jsonfile/prices_json.dart';
import 'package:afariat/utilitie/utilitie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'custmbutton.dart';

class BottomSheetFilter extends StatefulWidget {
  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  String dropdownValue = 'One';
  SfRangeValues _values = SfRangeValues(40.0, 100.0);
  final tap1ViewController = Get.find<Tap1ViewController>();

  // final categoryAndSubcategory = Get.find<CategoryAndSubcategory>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    icon: const Icon(Icons.arrow_downward),
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
                    icon: const Icon(Icons.arrow_downward),
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
        SfRangeSlider(
          min: 0.0,
          max: 1000.0,
          values: _values,
          //   interval: 100,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          //minorTicksPerInterval: 1,
          onChanged: (SfRangeValues values) {
            setState(() {
              _values = values;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _size.width * .4,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.orange)),
                  child: GetBuilder<Tap1ViewController>(
                    builder: (logic) {
                      return DropdownButton<Prices>(
                        isExpanded: true,
                        hint: Text('min'),
                        value: logic.dropdownminValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: logic.updatdropdownminValue,
                        items: logic.prices
                            .map<DropdownMenuItem<Prices>>((Prices value) {
                          return DropdownMenuItem<Prices>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _size.width * .4,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.orange)),
                  child: GetBuilder<Tap1ViewController>(
                    builder: (logic) {
                      return DropdownButton<Prices>(
                        isExpanded: true,
                        hint: Text('Max'),
                        value: logic.dropdownMaxValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: logic.updatdropdownMaxValue,
                        items: logic.prices
                            .map<DropdownMenuItem<Prices>>((Prices value) {
                          return DropdownMenuItem<Prices>(
                            value: value,
                            child: Text(value.name),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            CustomButton(
              height: 50,
              width: _size.width * .4,
              function: () {},
              labcolor: textbuttonColor,
              label: "APPLY FILTERS",btcolor: buttonColor,fontWeight: FontWeight.bold,fontSize: 20,
            ),
          ],
        )
      ],
    );
  }
}
