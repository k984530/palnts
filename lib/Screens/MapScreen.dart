import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

late KakaoMapController mapController;

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DraggableScrollableController bottomController =
        DraggableScrollableController();
    return Scaffold(
      body: Stack(
        children: [
          KakaoMap(
            onMapCreated: (controller) async {
              mapController = controller;
              // mapController.addMarker(markers: [Marker(latLng: )])
              
                mapController.addMarker(
                  markers: [
                    Marker(
                        markerId: 'test',
                        latLng: LatLng(33.44986152248232, 126.57050723840896))
                  ],
                
              );
            },
            onMarkerTap: (markerId, latLng, zoomLevel) => Get.toNamed("/Store"),
            onMapTap: (latLng) {
              print(latLng);
            },
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              initialChildSize: 0.25,
              controller: bottomController,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    // color: Colors.green[300],
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, -10)
                      )
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
