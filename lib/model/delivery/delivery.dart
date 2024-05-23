import 'package:flutter/material.dart';
import 'package:tager/model/delivery/timeline.dart';

class DeliveryStatus extends StatelessWidget {
  final int status;
  const DeliveryStatus({super.key, this.status = 1});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Container(
          height: 80,
          width: MediaQuery.sizeOf(context).width - 20,
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: checkaa.length,
            itemBuilder: (BuildContext context, int index) {
              return TimeLimeCustome(
                  first: checkaa[index]["first"],
                  last: checkaa[index]["last"],
                  colorsline: status == 0
                      ? field[index]
                      : status == 1
                          ? order[index]
                          : status == 2
                              ? delivery[index]
                              : status == 3
                                  ? round[index]
                                  : sucess[index],
                  // checkaa[index]["color"],
                  title: checkaa[index]["name"]);
            },
          ),
        ),
      ),
    );
  }
}

List checkaa = [
  {
    "name": "طلب",
    "first": true,
    "last": false,
    "color": true,
  },
  {
    "name": "الشحن",
    "first": false,
    "last": false,
    "color": true,
  },
  {
    "name": "في الطريق",
    "first": false,
    "last": false,
    "color": true,
  },
  {
    "name": "التوصيل",
    "first": false,
    "last": true,
    "color": false,
  },
];
List field = [false, false, false, false];
List order = [true, false, false, false];
List delivery = [true, true, false, false];
List round = [true, true, true, false];
List sucess = [true, true, true, true];
