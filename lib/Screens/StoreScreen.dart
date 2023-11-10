import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  'images/logo2.png',
                ),
              ),
            ),
          ),
        ),
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
                  "플랜테리아 카페 이름",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                'images/store1_1.jpg',
              ),
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
                            color: Colors.brown[(i + 1) % 9 * 100],
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('images/plant.jpeg'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "이름 : 새싹이\n품종 : 알로에",
                                  textAlign: TextAlign.center,
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
