import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

late KakaoMapController mapController;

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        KakaoMap(
          onMapCreated: (controller) async {
            mapController = controller;
          },
          onMapTap: (latLng) {
            print(latLng);
          },
        ),
      ],
    );
  }
}
