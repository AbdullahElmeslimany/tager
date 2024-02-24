import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/view/order_detials/order_detials.dart';
import 'view/home/home.dart';
import 'view/order/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tager',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
              bodyMedium: GoogleFonts.alexandria(),
              bodyLarge: GoogleFonts.alexandria(),
              bodySmall: GoogleFonts.alexandria(),)),
      builder: (context, child) {
        return Directionality(
            textDirection: TextDirection.rtl,
            child: Builder(
              builder: (context) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: TextScaler.linear(1.0),
                    ),
                    child: OrderDetials());
              },
            ));
      },
      // home: const ,
    );
  }
}
