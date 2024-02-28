import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../../model/textfromfieldcustom/textfromfieldcustom.dart';
import 'helper/addImage_product.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameproduct = TextEditingController();
    TextEditingController descraptionproduct = TextEditingController();
    TextEditingController price = TextEditingController();
    TextEditingController quantity = TextEditingController();
    TextEditingController saleprice = TextEditingController();
    GlobalKey<FormState> addItemForm = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: addItemForm,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(18),
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
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
