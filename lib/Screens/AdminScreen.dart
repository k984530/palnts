import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ADMIN PAGE"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text("식물명"),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("품종"),
            ),
          ),
        ],
      ),
    );
  }
}
