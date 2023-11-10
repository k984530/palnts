import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plants/Data/PersonalPlant.dart';

class ResisterPlant extends StatelessWidget {
  const ResisterPlant({super.key});

  @override
  Widget build(BuildContext context) {
    final img = Get.put(PersonalPlant());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "나만의 정원",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Obx(
              () {
                return !img.flag.value
                    ? Container(
                        height: 300,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Text("식물을 등록해주세요."))
                    : Container(
                        height: 300,
                        width: 300,
                        alignment: Alignment.center,
                        child: Image.file(File(img.pickedFile!.path)));
              },
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 4),
                        color: Colors.grey,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    img.getImage();
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 4),
                          color: Colors.grey,
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.image,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    child: Image.asset('images/personal_plant1.jpeg'),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    child: Image.asset('images/personal_plant2.jpeg'),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    child: Image.asset('images/personal_plant3.jpeg'),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    child: Image.asset('images/personal_plant4.jpeg'),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(2),
                    child: Image.asset('images/personal_plant5.jpeg'),
                  ),
                ],
              ),
            ),
            Obx(
              () {
                if (img.flag.value)
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed('/MyGarden');
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 4),
                            color: Colors.grey,
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.check,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  );
                else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
