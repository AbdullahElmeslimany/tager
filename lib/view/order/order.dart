import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    String typeOrder = "يدوي";
    String numberOrder = "381-1";
    String date = "20 نوفمبر 2023";
    return DefaultTabController(
      length: 5,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "الطلبات",
            style: TextStyle(),
          ),
          bottom: TabBar(
            isScrollable: true,
            dividerColor: Colors.white,
            onTap: (value) {
              print(value);
            },
            unselectedLabelColor: Colors.grey,

            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15), color: Colors.amber),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(text: "الكل"),
              Tab(text: "غير مشحون"),
              Tab(text: "تم الشحن"),
              Tab(text: "في الطريق"),
              Tab(text: "تم التوصيل"),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // height: 80,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 19),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "طلب $typeOrder | رقم الطلب: $numberOrder#",
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
