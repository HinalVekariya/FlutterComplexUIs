import 'package:flutter/material.dart';

class WeekDayList extends StatelessWidget {
  const WeekDayList({Key? key}) : super(key: key);
  static const _weekDayList = <String>[
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Tuesday",
    "Wednesday",
    "Thursday"
  ];

  static const _cloudIconList = <IconData>[
    Icons.cloud,
    Icons.cloud,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud,
    Icons.cloud,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud_outlined,
    Icons.cloud_outlined
  ];

  static const _highTempList = <int>[89, 89, 91, 87,89,89, 89, 91, 87,89,91, 87,89];
  static const _lowTempList = <int>[71, 69, 69, 71,69,89, 89, 91, 87,89,91, 87,89];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          padding: const EdgeInsets.all(0.0),
          itemCount: _cloudIconList.length,
          itemBuilder: (BuildContext context, int index) {
            return WeekDayItem(
                weekDay: _weekDayList[index],
                icon: _cloudIconList[index],
                highTemp: _highTempList[index],
                lowTemp: _lowTempList[index]);
          }),
    );
  }
}
class WeekDayItem extends StatelessWidget {
  final String weekDay;
  final IconData icon;
  final int highTemp;
  final int lowTemp;

  const WeekDayItem(
      {Key? key,
      required this.weekDay,
      required this.icon,
      required this.highTemp,
      required this.lowTemp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(weekDay,
                style: const TextStyle(fontSize: 20, color: Colors.white)),
          )),
          Expanded(child: Icon(icon, color: Colors.white)),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 10.0),
            child: Text(highTemp.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20.0),
            child: Text(lowTemp.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
