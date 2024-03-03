import 'package:flutter/material.dart';

class ItemsProductPage extends StatelessWidget {
  const ItemsProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/icons/cardbox.png",
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "المنتجات",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Get.to(const ClientDetials());
                    },
                    child: Container(
                      height: 95,
                      width: MediaQuery.sizeOf(context).width - 50,
                      margin:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 11),
                                child: Image.asset(
                                  "assets/icons/package.png",
                                  height: 70,
                                  width: 60,
                                ),
                              ),
                              const Text("منتج 1"),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "الكمية : 2",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[700]),
                            ),
                          ),
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
