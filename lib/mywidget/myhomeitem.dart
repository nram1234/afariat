import 'package:flutter/material.dart';

class MyHomeItem extends StatelessWidget {
  final Size size;

  final String img;
  final String title;
  final String time;
  final String price;

  const MyHomeItem({required this.size, required this.img, required this.title, required this.time, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    height: size.height * .3,
    child: Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.network(
    img,
    height: size.height * .25,
    width: size.width * .4,
    fit: BoxFit.fill,
    ),
    Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(title),
    ),
    const Spacer(),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(price),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(time),
    ),
    ],
    )
    ],
    )
    ],
    ),
    ),
    );
  }
}