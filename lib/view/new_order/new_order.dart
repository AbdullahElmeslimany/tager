import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/textfromfieldcustom/textfromfieldcustom.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController neworder = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "طلب جديد",
          style:
              GoogleFonts.alexandria(fontWeight: FontWeight.w700, fontSize: 17),
        ),
      ),
      body: Directionality(
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
                        "المنتجات",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.all(13),
                        child: textFromFieldcustom(
                            width: MediaQuery.sizeOf(context).width - 10,
                            hight: 15,
                            controller: neworder,
                            text: "ابحث عن منتج"),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 0,
                        itemBuilder: (BuildContext context, int index) {
                          return const Text("data");
                        },
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: Colors.deepOrangeAccent.shade200,
                              size: 20,
                            ),
                            Text(
                              "اضافة منتج اخر",
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent.shade200,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Gap(35),
                      const Divider(),
                      const Gap(10),
                      const Text(
                        "العميل",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.all(13),
                        child: textFromFieldcustom(
                            width: MediaQuery.sizeOf(context).width - 10,
                            hight: 15,
                            controller: neworder,
                            text: "اسم عميل"),
                      ),
                      const Gap(20),
                      const Divider(),
                      const Gap(10),
                      const Text(
                        "الشحن",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.all(13),
                        child: textFromFieldcustom(
                            width: MediaQuery.sizeOf(context).width - 10,
                            keyboardType: TextInputType.number,
                            hight: 15,
                            controller: neworder,
                            text: "مصاريف الشحن"),
                      ),
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
                          onPressed: () {},
                          child: Text(
                            "انشاء طلب",
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
    );
  }
}
