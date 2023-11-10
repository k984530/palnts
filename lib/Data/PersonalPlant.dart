import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalPlant extends GetxController {
  late XFile? pickedFile;
  RxBool flag = false.obs;
  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? _image = await picker.pickImage(source: ImageSource.gallery);
    if (_image != null) {
      pickedFile = XFile(_image.path); //가져온 이미지를 _image에 저장
      flag.value = true;
    }
  }
}
