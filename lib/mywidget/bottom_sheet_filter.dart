import 'package:afariat/home/tap1/tap1viewcontroller.dart';
import 'package:afariat/networking/jsonfile/prices_json.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BottomSheetFilter extends StatefulWidget {
  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  String dropdownValue = 'One';
  SfRangeValues _values = SfRangeValues(40.0, 100.0);
  final control = Get.find<Tap1ViewController>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery
        .of(context)
        .size;
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
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
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
                        isExpanded: true,hint: Text('min'),
                        value: logic.dropdownminValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged:logic.updatdropdownminValue,
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
                        isExpanded: true,hint: Text('Max'),
                        value: logic.dropdownMaxValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged:logic.updatdropdownMaxValue,
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
        )
      ],
    );
  }
}
