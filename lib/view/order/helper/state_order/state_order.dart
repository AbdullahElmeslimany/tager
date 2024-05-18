import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/view/order_detials/order_detials.dart';

class StateOrder extends StatelessWidget {
  final String typeOrder;
  final String numberOrder;
  final int numItemOrder;
  final String statusOrder;
  final String date;
  final String totalPrice;
  const StateOrder(
      {super.key,
      required this.typeOrder,
      required this.numberOrder,
      required this.numItemOrder,
      required this.statusOrder,
      required this.date,
      required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const OrderDetials());
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width - 70,
        // height: 80,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 19),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "رقم الطلب: $numberOrder#",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                // InkWell(
                //   child: Icon(Icons.more_vert_outlined),
                //   onTap: () {},
                // )
              ],
            ),
            Text(
              date,
              style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(statusOrder,
                      style: GoogleFonts.alexandria(
                          fontSize: 12, color: Colors.white)),
                ),
                Text(
                  "$numItemOrder منتج ",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                )
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text("المبلغ الكلي",
                        style: GoogleFonts.alexandria(fontSize: 12)),
                    const SizedBox(
                      height: 7,
                    ),
                    Text("$totalPrice جنيه ",
                        style: GoogleFonts.alexandria(
                            fontSize: 16,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 5),
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(5)),
                  child: MaterialButton(
                    onPressed: () {
                      Get.bottomSheet(Container(
                        height: 240,
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              child: MaterialButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("تم الشحن"),
                                    Gap(10),
                                    Icon(
                                      Icons.gpp_good_outlined,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              child: MaterialButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("في الطريق"),
                                    Gap(10),
                                    Icon(
                                      Icons.undo_rounded,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              child: MaterialButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("تم التوصيل"),
                                    Gap(10),
                                    Icon(
                                      Icons.delivery_dining_rounded,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              child: MaterialButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "الغاء الطلب",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Gap(10),
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Text("اتخاذ اجراء",
                        style: GoogleFonts.alexandria(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
