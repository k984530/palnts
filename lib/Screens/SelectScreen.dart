import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[50],
      ),
      body: Container(
        color: Colors.green[50],
        alignment: Alignment.center,
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Container(
              child: Image.asset('images/logo3.png'),
              width: 150,
              height: 150,
            ),
            Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/Resister');
              },
              child: Container(
                margin: EdgeInsets.all(15),
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        color: Colors.grey,
                      ),
                    ]),
                child: Text(
                  "나만의 정원",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/Map');
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 80, right: 15, left: 15),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        color: Colors.grey,
                      ),
                    ]),
                alignment: Alignment.center,
                child: Text(
                  "주변의 정원",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
