import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/textfromfieldcustom/textfromfieldcustom.dart';

class NewClient extends StatelessWidget {
  final String type;
  const NewClient({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameClient = TextEditingController();
    TextEditingController phoneClient = TextEditingController();
    TextEditingController cityClient = TextEditingController();
    TextEditingController addressClient = TextEditingController();
    TextEditingController infoClient = TextEditingController();
    GlobalKey<FormState> newClient = GlobalKey<FormState>();
    if (type == "edit") {
      nameClient.text = "Ahmed";
      phoneClient.text = "01012345678";
      cityClient.text = "Mansoura";
      addressClient.text = "Street";
      infoClient.text = " ";
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "عميل جديد",
          style:
              GoogleFonts.alexandria(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        actions: [
          type == "edit"
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red[600],
                  ))
              : Container()
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key: newClient,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "اسم العميل",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              hight: 13,
                              width: MediaQuery.sizeOf(context).width - 22,
                              controller: nameClient,
                              text: "اسم العميل"),
                        ),
                        const Divider(),
                        const Text(
                          "رقم هاتف",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              hight: 13,
                              width: MediaQuery.sizeOf(context).width - 22,
                              controller: phoneClient,
                              text: "01xxxxxxxxx",
                              keyboardType: TextInputType.phone),
                        ),
                        const Divider(),
                        const Text(
                          "المدينة",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              hight: 13,
                              width: MediaQuery.sizeOf(context).width - 22,
                              controller: cityClient,
                              text: "المدينة"),
                        ),
                        const Divider(),
                        const Text(
                          "العنوان",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              hight: 13,
                              width: MediaQuery.sizeOf(context).width - 22,
                              controller: addressClient,
                              text: "الشارع + المنطقة"),
                        ),
                        const Divider(),
                        const Text(
                          "معلومات اضافة",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              hight: 13,
                              maxLines: 4,
                              width: MediaQuery.sizeOf(context).width - 22,
                              controller: infoClient,
                              text: "ملاحظات"),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width - 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            onPressed: () {
                              if (newClient.currentState!.validate()) {
                                Get.back();
                              }
                            },
                            child: Text(
                              type == "edit" ? "تعديل عميل" : "اضافة عميل جديد",
                              style: GoogleFonts.alexandria(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
