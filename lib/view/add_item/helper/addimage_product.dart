import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../add_item/cubit/update_list_cubit.dart';

Row imageProduct(BuildContext context) {
  int item = 0;
  List imagelist = [];
  late var image;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      InkWell(
        onTap: () async {
          BlocProvider.of<SelectImageCubit>(context).addMoreItem(item: item);
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
                  "اضافة صورة",
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
                              // imagelist.remove(imagelist[index]);
                              // print(imagelist);
                              // print(imagelist[index]);

                              BlocProvider.of<SelectImageCubit>(context)
                                  .removeImage(image: index);
                              print("========================");
                              // log(index.toString());
                              print("=====================");
                              // imagelist.clear();
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
  );
}
