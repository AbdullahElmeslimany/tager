import 'package:flutter/material.dart';

pointLine({Color color = Colors.black12, double width = 2}) {
  return Row(
    children: List.generate(
        150 ~/ 2.5,
        (index) => Expanded(
              child: Container(
                color: index % width == 0 ? Colors.transparent : color,
                height: 2,
              ),
            )),
  );
}
