import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tager/model/textfromfieldcustom/textfromfieldcustom.dart';

class Suggest extends StatelessWidget {
  const Suggest({super.key});

  @override
  Widget build(BuildContext context) {
    final suggestController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                "المقتراحات والشكاوي",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/icons/note.png",
              height: 38,
            ),
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("قدم اقتراحاتك والشكاوي"),
                const Gap(15),
                const Text(
                  "* كل ما يدور من مقتراحاتك لا تتردد ارسله الينا وسوف يتم مراجعته والاخذ به بعين الاعتبار ",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const Gap(10),
                const Row(
                  children: [
                    Text(
                      "* اذا كنت تواجه اي مشكلة اكتب تفاصيل المشكلة ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const Gap(30),
                Text(
                  "* الخطوة التالية بعد ما تتم المراجعة سيتم اشعارك واعطاء الرد اسفل هذه الصفحة",
                  style: TextStyle(
                      color: Colors.teal[700],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const Gap(30),
                textFromFieldcustom(
                    maxLines: 8,
                    length: true,
                    mixlength: 500,
                    width: MediaQuery.sizeOf(context).width - 70,
                    controller: suggestController,
                    text: "اكتب هنا"),
                const Gap(30),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                    onPressed: () {
                      if (suggestController.text.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Colors.green,
                                content: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                        "تم الاسال سيتم ابلاغك في اقرب وقت"))));
                        suggestController.clear();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child:
                                        Text("املئ الحقل لكي يتم الارسال"))));
                      }
                    },
                    child: Text(
                      "ارسال",
                      style: GoogleFonts.alexandria(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
