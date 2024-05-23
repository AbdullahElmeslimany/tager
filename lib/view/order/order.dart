import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tager/view/new_order/new_order.dart';
import 'package:tager/view/order/helper/state_order/state_order.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    String typeOrder = "يدوي";
    String numberOrder = "381-1";
    int numItemOrder = 2;
    String statusOrder = "غير مشحون";
    String date = "20 نوفمبر 2023";
    String totalPrice = "120.00";
    return DefaultTabController(
      length: 5,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Image.asset(
                  "assets/icons/checklist.png",
                  height: 40,
                ),
                const Gap(10),
                const Text(
                  "الطلبات",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(const NewOrder());
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                    color: Colors.deepOrange[800],
                  ))
            ],
            bottom: TabBar(
              isScrollable: true,

              // dividerColor: const Color.fromARGB(255, 12, 6, 6),
              onTap: (value) {
                print(value);
              },
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue[900],
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
          body: TabBarView(children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return StateOrder(
                          typeOrder: typeOrder,
                          numberOrder: numberOrder,
                          numItemOrder: numItemOrder,
                          statusOrder: statusOrder,
                          date: date,
                          totalPrice: totalPrice);
                    },
                  ),
                )
              ],
            ),
            Container(),
            Container(),
            Container(),
            Container(),
          ])),
    );
  }
}
