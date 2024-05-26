import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tager/view/profile/profile.dart';
import 'package:tager/view/social_media/social_media.dart';
import 'package:tager/view/suggest/suggest.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                "الاعدادات",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/icons/settings.png",
              height: 38,
            ),
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)),
          child: ListView(
            children: [
              cardSetting(
                  title: "بيانات متجرك",
                  subtitle: "تعديل اسم المتجر والعنوان والسياسات",
                  route: const Profile(),
                  icon: Icons.storefront),
              cardSetting(
                  title: "روابط وسائل التواصل",
                  subtitle: "تعديل الروابط وسائل التواصل ",
                  route: const SocialMediaPage(),
                  icon: Icons.link),
              cardSetting(
                  title: "المقترحات والشكاوي",
                  subtitle:
                      "هنا يمكنك التواصل معنا المقترحات والمشاكل التي ممكن ان تواجهك",
                  route: const Suggest(),
                  icon: Icons.feedback),
            ],
          ),
        ),
      ),
    );
  }

  cardSetting(
      {required String title,
      required String subtitle,
      required route,
      required IconData? icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.amber[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () {
          Get.to(route);
        },
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 11, color: Colors.grey[500]),
        ),
        leading: Icon(icon),
        trailing: const Text("<Edit>"),
      ),
    );
  }
}
