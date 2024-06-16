import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

//전역 스타일
const mainContentTextFontSized = TextStyle(fontSize: 17);

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const cardViewDefaultWidget = 350.0;
    const cardViewDetailBusHeight = 35.0;
    return Scaffold(
      body: Center(
        child: Container(
          width: cardViewDefaultWidget,
          decoration: const BoxDecoration(
            color: Color(0x00000000),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Card(
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          width: 150,
                          height: 150,
                          child: QrImageView(data: 'data', size: 1.0),
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(style: TextStyle(fontSize: 20), 'name'),
                              Text(style: TextStyle(fontSize: 20), 'studno'),
                              Text(style: TextStyle(fontSize: 20), 'depo'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BusShowCard(
                          busStop: 'xxxx',
                          busStartTime: '오전 00시 00분',
                          remainTime: '0분',
                          height: cardViewDetailBusHeight,
                        ),
                        BusShowCard(
                          busStop: 'xxxx',
                          busStartTime: '오전 00시 00분',
                          remainTime: '0분',
                          height: cardViewDetailBusHeight,
                        ),
                        BusShowCard(
                          busStop: 'xxxx',
                          busStartTime: '오전 00시 00분',
                          remainTime: '0분',
                          height: cardViewDetailBusHeight,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BusShowCard extends StatelessWidget {
  const BusShowCard({
    super.key,
    required this.height,
    required this.busStop,
    required this.busStartTime,
    required this.remainTime,
  });
  final String busStop;
  final String busStartTime;
  final String remainTime;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 40),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: height,
              child: Center(
                child: Text(style: mainContentTextFontSized, '정류장: $busStop'),
              ),
            ),
            const Divider(),
            SizedBox(
              height: height,
              child: Center(
                  child: Text(
                      style: mainContentTextFontSized,
                      '버스 출발시간: $busStartTime')),
            ),
            const Divider(),
            SizedBox(
              height: height,
              child: Center(
                child: Text(
                  style: const TextStyle(fontSize: 17, color: Colors.red),
                  '남은 시간: $remainTime',
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              height: height,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                        size: 17.5,
                        color: Colors.green[700],
                        Icons.bus_alert_rounded),
                    Icon(
                        size: 17.5,
                        color: Colors.green[700],
                        Icons.arrow_circle_right_rounded),
                    Icon(
                        size: 17.5,
                        color: Colors.green[700],
                        Icons.arrow_circle_right_rounded),
                    Icon(
                        size: 17.5,
                        color: Colors.green[700],
                        Icons.arrow_circle_right_rounded),
                    Icon(size: 17.5, color: Colors.green[700], Icons.school),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
