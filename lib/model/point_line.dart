import 'package:flutter/material.dart';

pointLine() {
  return Row(
    children: List.generate(
        150 ~/ 2.5,
        (index) => Expanded(
              child: Container(
                color: index % 2 == 0 ? Colors.transparent : Colors.black12,
                height: 2,
              ),
            )),
  );
}
