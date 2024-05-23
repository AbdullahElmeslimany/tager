import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tager/model/point_line.dart';
import 'package:tager/view/new_coupon/new_coupon.dart';
import '../../../model/circle_coupon/circle_coupon.dart';

couponCard(BuildContext context, {required name}) {
  final width = MediaQuery.sizeOf(context).width;
  return InkWell(
    onTap: () {
      Get.to(const NewCoupon(type: "edit"));
    },
    child: ClipPath(
      clipper: DolDurmaClipper(right: width - 150.w, holeRadius: 25),
      child: Container(
        height: 180,
        width: MediaQuery.sizeOf(context).width - 50,
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red[300], borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Transform.rotate(
                  angle: 3.15 / 2,
                  child: Builder(builder: (context) {
                    return SizedBox(
                      height: 30,
                      width: 170,
                      child: pointLine(color: Colors.white, width: 5),
                    );
                  }),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 11),
                      // color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Copon1",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Gap(10),
                                Text(
                                  "10%",
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Gap(7),
                          const Text(
                            "Valid till 30 April 2025",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const Gap(5),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 7),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.deepOrangeAccent.shade200),
                                  child: MaterialButton(
                                    onPressed: () {
                                      Clipboard.setData(
                                          const ClipboardData(text: "Copon10"));
                                    },
                                    child: const Text(
                                      "Copy",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Copon10",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/logo.png",
                          height: 80,
                        ),
                        const Gap(0),
                        const Text(
                          "10%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22),
                        ),
                        const Text(
                          "Discount",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        const Row(
                          children: [
                            Text(
                              "Day Valid  ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Text(
                              "5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
