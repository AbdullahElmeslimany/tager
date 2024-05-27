import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/textfromfieldcustom/textfromfieldcustom.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController facebookController = TextEditingController();
    TextEditingController tikTokController = TextEditingController();
    TextEditingController instagramController = TextEditingController();
    TextEditingController youtubeController = TextEditingController();
    TextEditingController xController = TextEditingController();
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                "معلومات المتجر",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/icons/ecommerce.png",
              height: 38,
            ),
          ],
        ),
      ),
      body: Container(
          margin: const EdgeInsets.all(15),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              shrinkWrap: true,
              // physics: const BouncingScrollPhysics(),
              children: [
                // const Center(
                //     child: Text(
                //   "اضف روابط السوشيال ميديا حتي يصل زوارك اليها بكل سهولة",
                //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                // )),
                const Gap(25),
                const Text(
                  "اسم المتجر",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    width: width - 75,
                    controller: instagramController,
                    text: "المتجر"),

                const Gap(30),
                const Text(
                  "الدولة",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    width: width - 75,
                    controller: facebookController,
                    text: "الدولة"),

                const Gap(20),
                const Text(
                  "المدينة",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    width: width - 75,
                    controller: tikTokController,
                    text: "المدينة"),

                const Gap(25),
                const Text(
                  "رقم التواصل",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    width: width - 75,
                    controller: xController,
                    text: "201xxxxxxxxx+"),

                const Gap(10),
                const Text(
                  "سياسة الخصوصية",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    width: width - 75,
                    maxLines: 5,
                    controller: youtubeController,
                    text: "سياسة الخصوصية"),

                const Gap(20),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "حفظ",
                      style: GoogleFonts.alexandria(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
