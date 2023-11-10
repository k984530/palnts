import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Text(
                "플랜테리아 카페 이름",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                'images/store1_1.jpg',
              ),
            ),
            // Container(
            //   child: RatingBar.builder(
            //     initialRating: 0,
            //     minRating: 0,
            //     direction: Axis.horizontal,
            //     allowHalfRating: true,
            //     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            //     itemBuilder: (context, _) => Icon(
            //       Icons.star,
            //       color: Colors.lightGreen,
            //     ),
            //     onRatingUpdate: (rating) {
            //       print(rating);
            //     },
            //   ),
            // ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    for (int i = 0; i < 7; i++)
                      Container(
                        height: 80,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.brown[(i + 1) % 9 * 100],
                          borderRadius: BorderRadius.circular(
                            10,
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
