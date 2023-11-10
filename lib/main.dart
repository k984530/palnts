import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:plants/Screens/ChatScreen.dart';
import 'package:plants/Screens/MapScreen.dart';
import 'package:plants/Screens/PlantProfileScreen.dart';
import 'package:plants/Screens/StoreScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Screens/MapScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StoreScreen(),
      getPages: [
        GetPage(
          name: '/Chat',
          page: () => ChatScreen(),
        ),
      ],
    );
  }
}
