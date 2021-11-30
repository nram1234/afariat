import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'tap1viewcontroller.dart';

class Tap1Scr extends GetWidget<Tap1ViewController> {
  const Tap1Scr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 30,
              ),
              Icon(
                Icons.filter_alt_outlined,
                size: 30,
              )
            ],
          ),
          Expanded(flex: 1,
            child: GetBuilder<Tap1ViewController>(builder: (logic) {
              return logic.getdatafromweb
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(itemBuilder: (context,pos){
                    return Container();
              });
            }),
          )
        ],
      ),
    );
  }
}
