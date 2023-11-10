import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class OthersPlantsScreen extends StatelessWidget {
  const OthersPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        elevation: 3,
        shadowColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
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
                    Get.toNamed('/OtherData');
                  },
                  child: Container(
                    height: 200,
                    width: 130,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'images/plant0.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant1.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant2.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant3.jpeg',
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant4.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant5.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant6.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant7.jpeg',
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant7.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant8.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant9.jpeg',
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
                  height: 200,
                  width: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/plant12.jpeg',
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
