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
                    latLng: LatLng(33.44986152248232, 126.57050723840896),
                  ),
                  Marker(
                    markerId: 'test2',
                    latLng: LatLng(33.450560189752, 126.57133888182207),
                  ),
                ],
              );
            },
            onMarkerTap: (markerId, latLng, zoomLevel) => Get.toNamed("/Store"),
            onMapTap: (latLng) {
              print(latLng);
            },
          ),
          Positioned(
            bottom: 70,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/Resister');
              },
              child: Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Image.asset(
                  'images/plants.png',
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              maxChildSize: 0.80,
              initialChildSize: 0.2,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  // Consuming the scrollController provided
                  controller: scrollController,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 0.05 * MediaQuery.of(context).size.height),
                    height: 0.75 * MediaQuery.of(context).size.height,

                    // Generic Designing of the sheet
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          spreadRadius: 20.0,
                          offset: const Offset(0.0, 5.0),
                          color: Colors.black.withOpacity(0.1),
                        )
                      ],
                      color: Colors.white,
                    ),
                    // Contents of the sheet
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            const Spacer(),
                            Container(
                              height: 4,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),

                        // Declare your sheet content widgets ahead
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
