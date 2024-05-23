import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/view/add_item/cubit/update_list_cubit.dart';
import 'view/app_bar_buttom/buttom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.sizeOf(context).height);
    return ScreenUtilInit(
      designSize: const Size(411, 867),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<SelectImageCubit>(
              create: (context) => SelectImageCubit(),
            )
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tager Seller',
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
                textDirection: TextDirection.rtl, child: BottomBarCustom()
                // child: ClientDitials(
                //   name: "ahmed",
                //   phone: "01099844444",
                // )
                ),
          ),
        );
      },
    );
  }
}
