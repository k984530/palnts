import 'package:flutter/material.dart';
import 'package:plants/Screens/MyGardenScreen.dart';
import 'package:plants/Screens/MydataScreen.dart';
import 'package:plants/Screens/OthersDataScreen.dart';
import 'package:plants/Screens/OthersPlantsScreen.dart';
import 'package:plants/Screens/SelectScreen.dart';
import 'package:plants/Screens/Calendar.dart';
import 'package:plants/Screens/StoreScreen.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:plants/Screens/ChatScreen.dart';
import 'package:plants/Screens/MapScreen.dart';
import 'package:plants/Screens/PlantProfileScreen.dart';
import 'package:plants/Screens/StoreScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Screens/MapScreen.dart';

import 'Screens/ResisterPlant.dart';

void main() {
  AuthRepository.initialize(appKey: '17eadd0cc722ec44323a286f5534d4b1');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SelectScreen(),
      home: SelectScreen(),
      getPages: [
        GetPage(
          name: '/Map',
          page: () => MapScreen(),
        ),
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
        GetPage(
          name: '/Select',
          page: () => SelectScreen(),
        ),
        GetPage(
          name: '/Resister',
          page: () => ResisterPlant(),
        ),
        GetPage(
          name: '/MyGarden',
          page: () => MyGardenScreen(),
        ),
        GetPage(
          name: '/OthersPlants',
          page: () => OthersPlantsScreen(),
        ),
        GetPage(
          name: '/OthersPlants',
          page: () => OthersPlantsScreen(),
        ),
        GetPage(
          name: '/MyData',
          page: () => MydataScreen(),
        ),
        GetPage(
          name: '/OtherData',
          page: () => OtherdataScreen(),
        ),
        GetPage(
          name: '/Calender',
          page: () => CalenderScreen(),
        ),
      ],
    );
  }
}
