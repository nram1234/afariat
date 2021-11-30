import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Tap1Scr extends StatefulWidget {
  @override
  _Tap1ScrState createState() => _Tap1ScrState();
}

class _Tap1ScrState extends State<Tap1Scr> {
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
          )
        ],
      ),
    );
  }
}
