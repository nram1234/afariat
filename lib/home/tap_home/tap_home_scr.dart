import 'package:afariat/config/utilitie.dart';
import 'package:afariat/mywidget/bottom_sheet_filter.dart';
import 'package:afariat/mywidget/bottom_sheet_search.dart';

import 'package:afariat/mywidget/myhomeitem.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'tap_home_viewcontroller.dart';

class TapHomeScr extends GetWidget<TapHomeViewController> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
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
           Spacer(),


                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                )),
                            //height: 150,

                            child: BottomSheetFilter()),
                        //   barrierColor: Colors.red[50],
                        isDismissible: true, //  isScrollControlled:true ,
                        elevation: 10,
                        enableDrag: true,
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
              child: GetBuilder<TapHomeViewController>(builder: (logic) {
                return logic.getdatafromweb
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount:  logic.adverts.length,
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
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search_rounded),elevation: 5,onPressed: (){

        Get.bottomSheet(
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                //height: 150,

                child: BottomSheetSearch()),
            //   barrierColor: Colors.red[50],
            isDismissible: true, //  isScrollControlled:true ,
            elevation: 10,
            enableDrag: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )));
      },backgroundColor: buttonColor,
      ),
    );
  }
}
