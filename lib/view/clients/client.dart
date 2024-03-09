import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tager/model/textfromfieldcustom/textfromfieldcustom.dart';

import '../client_detials/client_detials.dart';
import '../clientdetials/clientdetials.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameClient = TextEditingController();
    TextEditingController phoneClient = TextEditingController();
    TextEditingController cityClient = TextEditingController();
    TextEditingController addClient = TextEditingController();
    TextEditingController infoClient = TextEditingController();
    GlobalKey<FormState> newClient = GlobalKey<FormState>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan.shade700,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Form(
                    key: newClient,
                    child: Container(
                      // height: 650,
                      width: MediaQuery.sizeOf(context).width,
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Gap(50),
                            const Text(
                              "اسم العميل",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Gap(5),
                            textFromFieldcustom(
                                hight: 13,
                                rtl: true,
                                width: MediaQuery.sizeOf(context).width - 22,
                                controller: nameClient,
                                text: "اسم العميل"),
                            const Gap(18),
                            const Text(
                              "رقم هاتف",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Gap(5),
                            textFromFieldcustom(
                                hight: 13,
                                rtl: true,
                                width: MediaQuery.sizeOf(context).width - 22,
                                controller: phoneClient,
                                text: "01xxxxxxxxx",
                                keyboardType: TextInputType.phone),
                            const Gap(18),
                            const Text(
                              "المدينة",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Gap(5),
                            textFromFieldcustom(
                                hight: 13,
                                rtl: true,
                                width: MediaQuery.sizeOf(context).width - 22,
                                controller: cityClient,
                                text: "المدينة"),
                            const Gap(18),
                            const Text(
                              "العنوان",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Gap(5),
                            textFromFieldcustom(
                                hight: 13,
                                rtl: true,
                                width: MediaQuery.sizeOf(context).width - 22,
                                controller: addClient,
                                text: "الشارع + المنطقة"),
                            const Gap(18),
                            const Text(
                              "معلومات اضافة",
                              style: TextStyle(fontSize: 12),
                            ),
                            const Gap(5),
                            textFromFieldcustom(
                                hight: 13,
                                rtl: true,
                                maxLines: 4,
                                width: MediaQuery.sizeOf(context).width - 22,
                                controller: infoClient,
                                text: "ملاحظات"),
                            Container(
                              width: MediaQuery.sizeOf(context).width - 25,
                              margin: const EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15)),
                              child: MaterialButton(
                                onPressed: () {
                                  print(newClient.currentState!.validate());
                                  if (newClient.currentState!.validate()) {
                                    Get.back();
                                  }
                                },
                                child: const Center(
                                    child: Text(
                                  "اضافة عميل جديد",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 27,
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/icons/user.png",
                  height: 35,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "العملاء",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Gap(40),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(ClientDitials(
                        name: nameClient.text,
                        phone: phoneClient.text,
                      ));
                    },
                    child: Container(
                      height: 95,
                      margin:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("الاسم"),
                              const Gap(10),
                              Row(
                                children: [
                                  Text(
                                    "رقم الهاتف",
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Image.asset(
                                    "assets/icons/whatsapp.png",
                                    height: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
