import 'package:flutter/material.dart';

class MydataScreen extends StatelessWidget {
  const MydataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print("heart button");
            },
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('images/plant.jpeg'),
        ],
      ),
    );
  }
}
