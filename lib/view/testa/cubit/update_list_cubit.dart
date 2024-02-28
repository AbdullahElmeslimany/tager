import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'update_list_state.dart';

class SelectImageCubit extends Cubit<UpdateListState> {
  SelectImageCubit() : super(UpdateListInitial());
  List imagelist = [];

  addMoreItem({required int item}) async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    // final   pickedImage =
    //     await imagePicker.pickImage(source: ImageSource.gallery);
    File imagefile = File(file!.path);
    print(imagefile);
    print(imagefile.runtimeType);
    imagelist.clear();
    imagelist.add(imagefile);
    item++;
    emit(AdditemState(item: item, image: imagefile, imagelist: imagelist));
  }

  removeImage({required image}) async {
    imagelist.remove(image);
    emit(RemoveitemState(image: imagelist));
  }
}
