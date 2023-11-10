import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          elevation: 3,
          shadowColor: Colors.grey,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(child: Image.asset("images/calender.png")));
  }
}
