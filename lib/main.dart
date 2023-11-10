import 'package:flutter/material.dart';
import 'package:plants/Screens/StoreScreen.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:plants/Screens/AdminScreen.dart';
import 'package:plants/Screens/ChatScreen.dart';
import 'package:plants/Screens/MapScreen.dart';
import 'package:plants/Screens/PlantProfileScreen.dart';

void main() {
  AuthRepository.initialize(appKey: '17eadd0cc722ec44323a286f5534d4b1');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: MapScreen(),
      getPages: [
        GetPage(name: '/Map', page: () => MapScreen()),
        GetPage(
          name: '/Store',
          page: () => StoreScreen(),
        ),
        GetPage(
          name: '/Chat',
          page: () => ChatScreen(),
        ),
        GetPage(
          name: '/Profile',
          page: () => PlantProfileScreen(),
        ),
      ],
    );
  }
}
