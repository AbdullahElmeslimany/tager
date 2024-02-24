import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

appBarOrderDetials() {
  return AppBar(
    title: Text(
      "الطلب",
      style: GoogleFonts.alexandria(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    actions: [
      InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/icons/download.png",
            height: 25,
          )),
      const SizedBox(
        width: 5,
      ),
      InkWell(
          onTap: () {},
          child: const Icon(
            Icons.more_horiz_rounded,
            size: 45,
            color: Color.fromARGB(255, 105, 105, 105),
          )),
    ],
  );
}
