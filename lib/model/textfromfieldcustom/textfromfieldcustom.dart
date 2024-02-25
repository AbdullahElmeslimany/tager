import 'package:flutter/material.dart';

textFromFieldcustom({
  double width = 120,
  required TextEditingController controller,
  required String text,
  double hight = 23,
  double padding = 10,
  Color color = const Color.fromARGB(99, 192, 192, 192),
}) {
  return SizedBox(
    width: width,
    child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '* Your Cupon Is Not Correct ';
        }
        return null;
      },
      controller: controller,
      style: const TextStyle(fontSize: 13),

      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: padding, vertical: hight),
          filled: false,
          fillColor: Colors.grey,
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: color,
          )),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
          ),
          hintText: text,
          hintStyle: const TextStyle(fontSize: 13)),
      // textAlign: TextAlign.end,
    ),
  );
}
