import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:plants/Data/PlantsName.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        elevation: 3,
        shadowColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print("search button");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print("user button");
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "[그계절]",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/store1_1.jpg',
                  ),
                  Image.asset(
                    'images/store1_2.jpg',
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "평점",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              margin: EdgeInsets.all(5),
            ),
            Container(
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.lightGreen,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    for (int i = 0; i < 7; i++)
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Profile');
                        },
                        child: Container(
                          height: 80,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 239, 237),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                  'images/plant' + i.toString() + '.jpeg'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "이름 : " +
                                      PlantsName[i] +
                                      "\n품종 : " +
                                      Plantskind[i],
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_sharp)
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
