import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:tager/model/point_line.dart';
import 'helper/app_bar.dart';
import 'helper/detials_client.dart';
import 'helper/statenumborder.dart';

class OrderDetials extends StatelessWidget {
  const OrderDetials({super.key});

  @override
  Widget build(BuildContext context) {
    String date = "نوفمبر 20 2023";
    String numberOrder = "1-381";
    String nameClient = "احمد";
    String gavermentClient = "طلخا";
    String cityClient = "المنصورة";
    String countryClient = "مصر";
    String statusOrder = "غير مشحون";
    int numItemOrder = 2;
    String phoneClient = "201099711531";

    return Scaffold(
      appBar: appBarOrderDetials(),
      body: Container(
        // margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            stateNumbOrder(numberOrder, statusOrder, date),
            detialsClient(nameClient, numItemOrder, gavermentClient, cityClient,
                countryClient, phoneClient),
            Container(
              height: 10,
              color: Colors.grey.shade200,
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 68,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Lottie.asset("assets/lottie/product.json",
                                          height: 90, width: 90),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 12, top: 20),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Center(child: Text("1")),
                                      )
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Gap(20),
                                      Text(
                                        "المنتج",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Gap(5),
                                      Text(
                                        "القسم",
                                        style: TextStyle(color: Colors.black38),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Text(
                                "EGP 100",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const Gap(20),
                pointLine(),
                Container(
                  height: 120,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("المبلغ الاجمالي"),
                          Text("EGP 100"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("تكلفة الشحن"),
                          Text("EGP 0"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("المبلغ الكلي"),
                          Text(
                            "EGP 100",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
