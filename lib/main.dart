import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/view/clients/client.dart';
import 'package:tager/view/order_detials/order_detials.dart';
import 'package:tager/view/testa/cubit/update_list_cubit.dart';
import 'package:tager/view/testa/add_item.dart';
import 'view/home/home.dart';
import 'view/new_order/new_order.dart';
import 'view/order/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SelectImageCubit>(
            create: (context) => SelectImageCubit(),
          )
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tager',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              textTheme: TextTheme(
                labelMedium: GoogleFonts.alexandria(),
                labelLarge: GoogleFonts.alexandria(),
                labelSmall: GoogleFonts.alexandria(),
                bodyMedium: GoogleFonts.alexandria(),
                bodyLarge: GoogleFonts.alexandria(),
                bodySmall: GoogleFonts.alexandria(),
              )),
          // builder: (context, child) {
          //   return
          // },
          home: const Directionality(
              textDirection: TextDirection.rtl,
              //  child: AddItem()
              child: HomePage()),
        ));
  }
}
