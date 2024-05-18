import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

detialsClient(String nameClient, int numItemOrder, String gavermentClient,
    String cityClient, String countryClient, String phoneClient) {
  return Container(
    margin: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "العميل",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Gap(8),
        Text(nameClient,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const Gap(5),
        // Text("$numItemOrder طلب",
        //     style: const TextStyle(fontSize: 14, color: Colors.black38)),
        // const Gap(5),
        const Divider(
          color: Colors.black12,
        ),
        const Gap(10),
        const Text(
          "التواصل",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Gap(8),
        Row(
          children: [
            Text(countryClient,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w200)),
            const Gap(10),
            Text(cityClient,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w200)),
            const Gap(10),
            Text(gavermentClient,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w200)),
          ],
        ),

        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$phoneClient+",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            IconButton(
                onPressed: () {
                  print(150 ~/ 2);
                  print(phoneClient);
                },
                icon: Image.asset(
                  "assets/icons/whatsapp.png",
                  height: 25,
                ))
          ],
        )
      ],
    ),
  );
}
