import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
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
        children: <Widget>[
          KakaoMap(
            onMapCreated: (controller) async {
              mapController = controller;
              // mapController.addMarker(markers: [Marker(latLng: )])
              mapController.addMarker(
                markers: [
                  Marker(
                      markerId: 'test',
                      latLng: LatLng(33.44986152248232, 126.57050723840896)),
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
                        offset: Offset(0, -10),
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      ListTile(
                        title: Text(
                          "\t\t가게 이름",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 22),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: 320,
                          height: 230,
                          decoration: BoxDecoration(
                            // shape: BoxShape.rectangle,
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage('images/store2.jpeg'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35, top: 10),
                        child: Text(
                          "평점",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35),
                        alignment: Alignment.bottomLeft,
                        child: RatingBar.builder(
                          itemSize: 20,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 26, 182, 107),
                          ),
                          onRatingUpdate: (double value) {},
                        ),
                      ),
                    ],
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
