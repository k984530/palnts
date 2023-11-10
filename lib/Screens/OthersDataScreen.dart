import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Data/PlantsData.dart';

class OtherdataScreen extends StatelessWidget {
  const OtherdataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("식물 상세정보"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.green.shade400,
        elevation: 3,
        shadowColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print("heart button");
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.all(15),
                  child: Image.asset('images/plant0.jpeg'),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(2, 4),
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Colors.grey),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  child: Text(
                    "인도 고무나무",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(100, 249, 249, 242),
              ),
              child: SfCartesianChart(
                palette: [Color.fromARGB(255, 2, 96, 26)],
                title: ChartTitle(text: '흙의 수분량'),
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<Plantdata, String>>[
                  LineSeries<Plantdata, String>(
                      dataSource: <Plantdata>[
                        Plantdata('1월', 35),
                        Plantdata('2월', 30),
                        Plantdata('3월', 34),
                        Plantdata('4월', 40),
                        Plantdata('5월', 24),
                        Plantdata('6월', 30),
                        Plantdata('7월', 50),
                        Plantdata('8월', 60),
                        Plantdata('9월', 34),
                        Plantdata('10월', 20),
                        Plantdata('11월', 14),
                        Plantdata('12월', 24),
                      ],
                      xValueMapper: (Plantdata data, _) => data.year,
                      yValueMapper: (Plantdata data, _) => data.number),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(100, 249, 249, 242),
              ),
              child: SfCartesianChart(
                palette: [Color.fromARGB(255, 2, 96, 26)],
                title: ChartTitle(text: '조도량'),
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<Plantdata, String>>[
                  LineSeries<Plantdata, String>(
                      dataSource: <Plantdata>[
                        Plantdata('1월', 35),
                        Plantdata('2월', 30),
                        Plantdata('3월', 34),
                        Plantdata('4월', 40),
                        Plantdata('5월', 24),
                        Plantdata('6월', 30),
                        Plantdata('7월', 50),
                        Plantdata('8월', 60),
                        Plantdata('9월', 34),
                        Plantdata('10월', 20),
                        Plantdata('11월', 14),
                        Plantdata('12월', 24),
                      ],
                      xValueMapper: (Plantdata data, _) => data.year,
                      yValueMapper: (Plantdata data, _) => data.number),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(100, 249, 249, 242),
              ),
              child: SfCartesianChart(
                palette: [Color.fromARGB(255, 2, 96, 26)],
                title: ChartTitle(text: '평균 온도'),
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<Plantdata, String>>[
                  LineSeries<Plantdata, String>(
                      dataSource: <Plantdata>[
                        Plantdata('1월', 5),
                        Plantdata('2월', 10),
                        Plantdata('3월', 23),
                        Plantdata('4월', 25),
                        Plantdata('5월', 30),
                        Plantdata('6월', 34),
                        Plantdata('7월', 32),
                        Plantdata('8월', 20),
                        Plantdata('9월', 23),
                        Plantdata('10월', 15),
                        Plantdata('11월', 5),
                        Plantdata('12월', 3),
                      ],
                      xValueMapper: (Plantdata data, _) => data.year,
                      yValueMapper: (Plantdata data, _) => data.number),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(100, 249, 249, 242),
              ),
              child: SfCartesianChart(
                palette: [Color.fromARGB(255, 2, 96, 26)],
                title: ChartTitle(text: '흙의 양분량'),
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<Plantdata, String>>[
                  LineSeries<Plantdata, String>(
                      dataSource: <Plantdata>[
                        Plantdata('1월', 20),
                        Plantdata('2월', 23),
                        Plantdata('3월', 22),
                        Plantdata('4월', 21),
                        Plantdata('5월', 25),
                        Plantdata('6월', 18),
                        Plantdata('7월', 23),
                        Plantdata('8월', 15),
                        Plantdata('9월', 25),
                        Plantdata('10월', 24),
                        Plantdata('11월', 14),
                        Plantdata('12월', 20),
                      ],
                      xValueMapper: (Plantdata data, _) => data.year,
                      yValueMapper: (Plantdata data, _) => data.number),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
