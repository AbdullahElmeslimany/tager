import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/view/order_detials/order_detials.dart';
import 'package:tager/view/testa/cubit/update_list_cubit.dart';
import 'package:tager/view/testa/add_item.dart';
import 'view/home/home.dart';
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
        child: MaterialApp(
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
          home: Directionality(
              textDirection: TextDirection.rtl,
              child: Builder(
                builder: (context) {
                  return MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        textScaler: const TextScaler.linear(1.0),
                      ),
                      // child: OrderDetials());
                      child: AddItem());
                },
              )),
        ));
  }
}
