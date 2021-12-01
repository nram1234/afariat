import 'package:afariat/mywidget/bottom_sheet_filter.dart';
import 'package:afariat/mywidget/myhomeitem.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'tap1viewcontroller.dart';

class Tap1Scr extends GetWidget<Tap1ViewController> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                      Container(
                          decoration:
                              const BoxDecoration(  color: Colors.white,borderRadius: BorderRadius.only(    topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),)),
                          //height: 150,

                          child:  BottomSheetFilter()),
                      //   barrierColor: Colors.red[50],
                      isDismissible: false,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )));
                },
                child: const Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: GetBuilder<Tap1ViewController>(builder: (logic) {
              return logic.getdatafromweb
                  ? Center(child: const CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: logic.adverts.length,
                      itemBuilder: (context, pos) {
                        return MyHomeItem(
                          size: _size,
                          adverts: logic.adverts[pos],
                        );
                      });
            }),
          )
        ],
      ),
    );
  }
}
