import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/model/textfromfieldcustom/textfromfieldcustom.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                "سوشيال ميديا",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/icons/social-media.png",
              height: 38,
            ),
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
            margin: const EdgeInsets.all(15),
            child: ListView(
              children: [
                const Center(
                    child: Text(
                  "اضف روابط السوشيال ميديا حتي يصل زوارك اليها بكل سهولة",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icons/instagram.png",
                      height: 38,
                    ),
                    textFromFieldcustom(
                        width: width - 75,
                        controller: instagramController,
                        text: "Instagram"),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icons/facebook.png",
                      height: 38,
                    ),
                    Gap(5),
                    textFromFieldcustom(
                        width: width - 75,
                        controller: facebookController,
                        text: "FaceBook"),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icons/tik-tok.png",
                      height: 38,
                    ),
                    textFromFieldcustom(
                        width: width - 75,
                        controller: tikTokController,
                        text: "TikTok"),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icons/twitter.png",
                      height: 38,
                    ),
                    textFromFieldcustom(
                        width: width - 75, controller: xController, text: "X"),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icons/youtube.png",
                      height: 38,
                    ),
                    textFromFieldcustom(
                        width: width - 75,
                        controller: youtubeController,
                        text: "YouTube"),
                  ],
                ),
                const Gap(50),
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
            )),
      ),
    );
  }
}
