import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

appBarOrderDetials() {
  return AppBar(
    title: Text(
      "الطلب",
      style: GoogleFonts.alexandria(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    actions: [
      InkWell(
          onTap: () async {
            var fontaa = await rootBundle.load("assets/font/Alexandria.ttf");
            final ttf = pw.Font.ttf(fontaa);
            final pdf = pw.Document();
            pdf.addPage(pw.Page(
                pageFormat: PdfPageFormat.a4,
                theme: pw.ThemeData.withFont(
                  base: ttf,
                ),
                build: (pw.Context context) {
                  return pw.Directionality(
                      textDirection: pw.TextDirection.rtl,
                      child: pw.ListView(children: [
                        pw.Text("Yech"),
                        pw.Row(children: [
                          pw.Text("طلب رقم"),
                          pw.Text("1-359"),
                        ]),
                        pw.Row(children: [
                          pw.Text("التاريخ:"),
                          pw.Text("31-12-2023"),
                        ])
                      ])); // Center
                })); // Page
            final output = await getTemporaryDirectory();
            final file = File("${output.path}/example.pdf");
            // final file = File("example.pdf");
            var a = await file.writeAsBytes(await pdf.save());
            print("success");
            print(a);
            await OpenFile.open(
                '/data/user/0/com.example.tager/cache/example.pdf');
          },
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
