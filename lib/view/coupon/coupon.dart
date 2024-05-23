import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tager/view/new_coupon/new_coupon.dart';
import 'helper/coupon_card.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/icons/discount-coupon.png",
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "الكوبونات",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Get.to(const NewCoupon(
                        type: "add",
                      ));
                    },
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      size: 28,
                      color: Colors.deepOrange[800],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  //  shrinkWrap: true,
                  //  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return couponCard(context, name: "");
                  },
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
