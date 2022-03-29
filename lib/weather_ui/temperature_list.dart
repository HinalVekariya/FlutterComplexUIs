import 'package:flutter/material.dart';

class TemperatureList extends StatelessWidget {
  const TemperatureList({Key? key}) : super(key: key);

  static const _iconList = <IconData>[
    Icons.cloud,
    Icons.cloud,
    Icons.cloud,
    Icons.cloud,
    Icons.cloud,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud,
    Icons.cloud,
    Icons.cloud_outlined,
    Icons.cloud,
  ];

  static const _timeList = <String>["Now", "10AM", "11AM", "12PM", "1PM", "2PM", "3PM", "4PM", "5PM", "6PM", "7PM"];

  static const _tempList = <String>["75°", "75°", "77°", "77°", "81°", "82°", "83°", "74°", "75°", "73°", "69°", "80°"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 120.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _iconList.length,
            itemBuilder: (BuildContext context, int index) {
              return TemperatureItem(
                  time: _timeList[index],
                  icon: _iconList[index],
                  temp: _tempList[index]);
            }),
      ),
    );
  }

}
class TemperatureItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;

  const TemperatureItem(
      {Key? key, required this.time, required this.icon, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            time,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(temp,
              style: const TextStyle(fontSize: 20, color: Colors.white)),
        )
      ],
    );
  }
}
