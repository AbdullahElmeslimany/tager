import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/random/random.dart';
import '../../controller/convert/month.dart';
import '../../model/textfromfieldcustom/textfromfieldcustom.dart';

class NewCoupon extends StatelessWidget {
  final String type;
  const NewCoupon({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCoupon = TextEditingController();
    TextEditingController rateCoupon = TextEditingController();
    TextEditingController codeCoupon = TextEditingController();
    TextEditingController endDateCoupon = TextEditingController();
    GlobalKey<FormState> newCouponKey = GlobalKey<FormState>();
    if (type == "edit") {
      nameCoupon.text = "Copon10";
      rateCoupon.text = "10";
      codeCoupon.text = "Copon10";
      endDateCoupon.text = "10 Apr 2024";
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "كوبون جديد",
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
      body: Form(
        key: newCouponKey,
        child: Directionality(
          textDirection: TextDirection.rtl,
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
                          "اسم الكونون",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              width: MediaQuery.sizeOf(context).width - 22,
                              hight: 15,
                              controller: nameCoupon,
                              text: "ادخل اسم للكونون"),
                        ),
                        Text(
                          "هذا الاسم يكون معرف فقط لك",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),
                        const Divider(),
                        const Gap(10),
                        const Text(
                          "نسبة الخصم",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              width: MediaQuery.sizeOf(context).width - 10,
                              hight: 15,
                              controller: rateCoupon,
                              keyboardType: TextInputType.number,
                              text: "ادخل النسبة"),
                        ),
                        Text(
                          "الرقم يتم حسابه بالنسبة المئوية %",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),
                        const Divider(),
                        const Gap(10),
                        const Text(
                          "كود الكوبون",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.all(13),
                          child: textFromFieldcustom(
                              width: MediaQuery.sizeOf(context).width - 10,
                              keyboardType: TextInputType.text,
                              hight: 15,
                              controller: codeCoupon,
                              text: "انشاء الكوبون"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الكود الذي يستخدمه العميل",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[500]),
                            ),
                            InkWell(
                                onTap: () {
                                  String randomString = getRandomString(6);
                                  codeCoupon.text = randomString.toString();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "كود عشوائي",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange[900]),
                                  ),
                                )),
                          ],
                        ),
                        const Divider(),
                        const Gap(10),
                        const Text(
                          "تاريخ انتهاء الكوبون",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: const EdgeInsets.all(13),
                            child: InkWell(
                              onTap: () async {
                                final pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now()
                                        .add(const Duration(days: 365)));
                                if (pickedDate != null) {
                                  Duration pickedDuration = pickedDate
                                      .difference(DateTime(2024, 6, 1));
                                  print((pickedDuration.inDays + 1) * -1);
                                  String month =
                                      monthConvnumbtoStr(pickedDate.month);
                                  String day = pickedDate.day.toString();
                                  String year = pickedDate.year.toString();

                                  endDateCoupon.text = "$month/$day/$year";
                                } else {
                                  return; // User canceled the picker
                                }
                              },
                              child: textFromFieldcustom(
                                  enabled: false,
                                  width: MediaQuery.sizeOf(context).width - 10,
                                  keyboardType: TextInputType.number,
                                  hight: 15,
                                  controller: endDateCoupon,
                                  text: "ادخل تاريخ الانتهاء"),
                            )),
                        const Gap(30),
                      ],
                    ),
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
                              if (newCouponKey.currentState!.validate()) {
                                Get.back();
                              }
                            },
                            child: Text(
                              type == "edit"
                                  ? "تعديل الكوبون"
                                  : "انشاء الكوبون",
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
