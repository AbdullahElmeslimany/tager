import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tager/model/textfromfieldcustom/textfromfieldcustom.dart';

import 'cubit/update_list_cubit.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    int item = 0;
    late File image;
    List imagelist = [];
    TextEditingController nameproduct = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  controller: nameproduct,
                  text: "قم بادخال اسم المنتج"),
            ),
            const Gap(15),
            const Text(
              "صورة المنتج",
              style: TextStyle(fontSize: 12),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    BlocProvider.of<SelectImageCubit>(context)
                        .addMoreItem(item: item);
                  },
                  child: Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/addimage.png",
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            "اضافة منتج",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                BlocConsumer<SelectImageCubit, UpdateListState>(
                  listener: (context, state) {
                    if (state is AdditemState) {
                      item = state.item;
                      image = state.image;
                      imagelist.addAll(state.imagelist);
                    }
                    if (state is RemoveitemState) {
                      imagelist.addAll(state.image);
                    }
                  },
                  builder: (context, state) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width - 120,
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagelist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Container(
                              height: 105,
                              width: 90,
                              // color: Colors.amber,
                              margin: const EdgeInsets.symmetric(horizontal: 7),
                              child: Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          // image,
                                          imagelist[index],
                                          height: 90,
                                          width: 80,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        BlocProvider.of<SelectImageCubit>(
                                                context)
                                            .removeImage(
                                                image: imagelist[index]);
                                      },
                                      child: const Icon(
                                        Icons.highlight_remove_rounded,
                                        color: Colors.deepOrange,
                                      ),
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
