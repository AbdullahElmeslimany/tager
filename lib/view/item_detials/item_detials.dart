import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../model/textfromfieldcustom/textfromfieldcustom.dart';
import '../add_item/helper/addimage_product.dart';

class ItemDetials extends StatefulWidget {
  const ItemDetials({super.key});

  @override
  State<ItemDetials> createState() => _ItemDetialsState();
}

class _ItemDetialsState extends State<ItemDetials> {
  bool active = false;

  void onchange() {
    setState(() {
      active = true;
    });
  }

  @override
  void initState() {
    onchange();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "https://www.gstatic.com/webp/gallery3/1.sm.png",
      "https://via.placeholder.com/300/09f/fff.png",
      "https://via.placeholder.com/150/FF0000/FFFFFF?Text=yttags.com"
    ];
    TextEditingController nameproduct = TextEditingController();
    TextEditingController descraptionproduct = TextEditingController();
    TextEditingController price = TextEditingController();
    TextEditingController quantity = TextEditingController();
    TextEditingController saleprice = TextEditingController();
    GlobalKey<FormState> addItemForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("منتج جدبد"),
      ),
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key: addItemForm,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(height: 161),
                    itemCount: first.length,
                    itemBuilder: (context, index, realIndex) {
                      final firstImage = first[index];

                      return Image.network(
                        first[index],
                        fit: BoxFit.cover,
                        width: 250,
                        height: 50,
                      );
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(18),
                      const Text(
                        "اسم المنتج",
                        style: TextStyle(fontSize: 12),
                      ),
                      const Gap(10),
                      Center(
                        child: textFromFieldcustom(
                            width: MediaQuery.sizeOf(context).width - 45,
                            hight: 12,
                            controller: nameproduct,
                            text: "قم بادخال اسم المنتج"),
                      ),
                      const Gap(15),
                      const Text(
                        "وصف المنتج",
                        style: TextStyle(fontSize: 12),
                      ),
                      const Gap(10),
                      Center(
                        child: textFromFieldcustom(
                            width: MediaQuery.sizeOf(context).width - 45,
                            hight: 12,
                            controller: descraptionproduct,
                            text: "قم بادخال وصف المنتج",
                            length: true),
                      ),
                      const Gap(15),
                      const Text(
                        "صورة المنتج",
                        style: TextStyle(fontSize: 12),
                      ),
                      imageProduct(context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "السعر",
                                style: TextStyle(fontSize: 12),
                              ),
                              const Gap(7),
                              textFromFieldcustom(
                                  keyboardType: TextInputType.number,
                                  hight: 10,
                                  width: MediaQuery.sizeOf(context).width / 2.5,
                                  controller: price,
                                  text: "EGP")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "السعر قبل الخصم",
                                style: TextStyle(fontSize: 12),
                              ),
                              const Gap(7),
                              textFromFieldcustom(
                                  keyboardType: TextInputType.number,
                                  hight: 10,
                                  width: MediaQuery.sizeOf(context).width / 2.5,
                                  controller: saleprice,
                                  text: "EGP")
                            ],
                          ),
                        ],
                      ),
                      const Gap(22),
                      const Text(
                        "الكمية",
                        style: TextStyle(fontSize: 12),
                      ),
                      const Gap(7),
                      textFromFieldcustom(
                          keyboardType: TextInputType.number,
                          hight: 10,
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          controller: quantity,
                          text: "")
                    ],
                  ),
                  const Gap(50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width - 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 251, 105, 52),
                            borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                          onPressed: () {
                            if (addItemForm.currentState!.validate()) {
                              print("yess!");
                            }
                          },
                          child: const Text(
                            "اضافة المنتج",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
