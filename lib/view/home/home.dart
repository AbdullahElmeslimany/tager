import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tager/view/new_order/new_order.dart';
import 'package:tager/view/add_item/add_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String nameCompany = "Yech";
    String linkCompany = "yach.tager.app";
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "مرحبا !",
                    style: TextStyle(fontSize: 16),
                  ),
                  Image.asset(
                    "assets/icons/logo.png",
                    height: 60,
                  )
                ],
              ),
              Text(
                nameCompany,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              linkCard(MediaQuery.sizeOf(context), linkCompany),
              const Gap(17),
              const Text(
                "قم بمشاركة الرابط لزيادة عدد زوار متجرك",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Gap(11),
              const Text(
                "كل ما عليك هو اضافة منتجاتك ومشاركة التطبيق عبر منصات التواصل الاجتماعي وسيتم زيادة عدد زوار المتجر",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const Gap(15),
              const Divider(),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonHome(
                      size: MediaQuery.sizeOf(context),
                      onTap: () {
                        Get.to(const AddItem());
                      },
                      colortext: Colors.grey.shade200,
                      title: "اضف منتج",
                      backColor: Colors.deepOrangeAccent.shade200),
                  buttonHome(
                      size: MediaQuery.sizeOf(context),
                      onTap: () {
                        Get.to(const NewOrder());
                      },
                      colortext: Colors.grey.shade200,
                      title: "طلب جديد",
                      backColor: const Color.fromARGB(236, 0, 97, 100))
                ],
              ),
              const Gap(10),
              const Divider(),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 130,
                    width: MediaQuery.sizeOf(context).width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red[600]),
                          child: const Center(
                            child: Text(
                              "مبيعاتك",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Text(
                          "0 جنيه",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.sizeOf(context).width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red[600]),
                          child: const Center(
                            child: Text(
                              "ارباحك",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Text(
                          "0 جنيه",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(25),
              // Container(
              //     height: 120,
              //     width: MediaQuery.sizeOf(context).width,
              //     decoration: const BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/icons/delivery.png"))),
              //     child: BackdropFilter(
              //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              //       child: const Center(child: Text("سوف يكون متاح قريبا")),
              //     ))

              Stack(alignment: Alignment.center, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 0),
                    child: Image.asset(
                      'assets/icons/delivery.png',
                      fit: BoxFit.fill,
                      height: 150,
                      width: MediaQuery.sizeOf(context).width - 30,
                    ),
                  ),
                ),
                const Text(
                  "سوف يكون متاح قريبا",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ]),
            ],
          ),
        ),
      )),
    );
  }

  InkWell buttonHome(
      {required Size size,
      required Function() onTap,
      required String title,
      required Color colortext,
      required Color backColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: size.width / 2.7,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: colortext, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  Container linkCard(Size size, String linkCompany) {
    return Container(
      height: 50,
      width: size.width - 80,
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 55,
            child: InkWell(
              child: Image.asset(
                "assets/icons/share.png",
                height: 25,
                width: 25,
              ),
              onTap: () async {
                await Share.shareWithResult(linkCompany);
              },
            ),
          ),
          Row(
            children: [
              Text(
                linkCompany,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]),
              ),
              Container(
                margin: const EdgeInsets.only(right: 12),
                child: Center(
                    child: InkWell(
                  child: const Icon(Icons.copy_rounded),
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: linkCompany));
                  },
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
