import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        elevation: 3,
        shadowColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("나만의 정원"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/MyData');
                  },
                  child: Container(
                    height: 400,
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'images/personal_plant2.jpeg',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(2, 6),
                            color: Colors.black38),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/personal_plant5.jpeg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(2, 6),
                          color: Colors.black38),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/personal_plant4.jpeg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(2, 6),
                          color: Colors.black38),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
