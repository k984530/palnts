import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

late KakaoMapController mapController;

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DraggableScrollableController bottomController =
        DraggableScrollableController();
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
        SizedBox.expand(
          child: DraggableScrollableSheet(
            minChildSize: 0.1,
            initialChildSize: 0.25,
            controller: bottomController,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.green[300],
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
                      return Container(
                        height: 50,
                      );
                    }),
              );
            },
          ),
        )
      ],
    );
  }
}
