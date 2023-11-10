import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:plants/Screens/StoreScreen.dart';
=======
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:plants/Screens/ChatScreen.dart';
import 'package:plants/Screens/MapScreen.dart';
import 'package:plants/Screens/PlantProfileScreen.dart';
>>>>>>> cdd8f3bd5c1b67e90141b0a6239cf8793ca282d7

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
<<<<<<< HEAD
      home: StoreScreen(),
=======
      home: PlantProfileScreen(),
      getPages: [
        GetPage(
          name: '/Chat',
          page: () => ChatScreen(),
        ),
      ],
>>>>>>> cdd8f3bd5c1b67e90141b0a6239cf8793ca282d7
    );
  }
}
