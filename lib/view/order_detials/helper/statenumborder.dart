import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

stateNumbOrder(String numberOrder, String statusOrder, String date) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  numberOrder,
                  style: GoogleFonts.aDLaMDisplay(fontSize: 22),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.copy,
                      size: 22,
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
              decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(5)),
              child: Text(statusOrder,
                  style: GoogleFonts.alexandria(
                      fontSize: 12, color: Colors.white)),
            ),
          ],
        ),
        const Gap(5),
        Text(
          date,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const Gap(7),
      ],
    ),
  );
}
