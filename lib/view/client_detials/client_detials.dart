import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tager/model/textfromfieldcustom/textfromfieldcustom.dart';

import '../app_bar_buttom/buttom_bar.dart';

class ClientDitials extends StatelessWidget {
  final String name;
  final String phone;
  const ClientDitials({super.key, required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: name);
    TextEditingController phoneController = TextEditingController(text: phone);
    TextEditingController addController = TextEditingController(text: "");
    TextEditingController extraInfoController = TextEditingController(text: "");
    GlobalKey<FormState> clientdetialsController = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Form(
        key: clientdetialsController,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width - 15,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("اسم العميل"),
                  const Gap(10),
                  textFromFieldcustom(
                      controller: nameController,
                      text: "",
                      hight: 18,
                      width: MediaQuery.sizeOf(context).width - 30),
                  const Gap(15),
                  const Text("رقم التليفون"),
                  const Gap(10),
                  textFromFieldcustom(
                      controller: phoneController,
                      text: "",
                      hight: 18,
                      width: MediaQuery.sizeOf(context).width - 30),
                  const Gap(15),
                  const Text("العنوان"),
                  const Gap(10),
                  textFromFieldcustom(
                      maxLines: 2,
                      controller: addController,
                      text: "",
                      hight: 18,
                      width: MediaQuery.sizeOf(context).width - 30),
                  const Gap(15),
                  const Text("معلومات اضافية"),
                  const Gap(10),
                  textFromFieldcustom(
                      maxLines: 4,
                      controller: extraInfoController,
                      text: "",
                      hight: 18,
                      width: MediaQuery.sizeOf(context).width - 30),
                  const Gap(80),
                  Container(
                    height: 65,
                    width: MediaQuery.sizeOf(context).width - 45,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.cyan[800],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {
                        Get.snackbar("", "",
                            titleText: const Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text("تم التعديل بنجاح")));
                        Get.offAll(const BottomBarCustom());
                      },
                      child: const Text(
                        "حفظ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
