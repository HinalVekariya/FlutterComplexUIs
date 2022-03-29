import 'package:flutter/material.dart';
import 'package:wather_ui_demo/weather_ui/temperature_list.dart';
import 'package:wather_ui_demo/weather_ui/week_day_list.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("weather_image.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text("Rockville",
                style: TextStyle(fontSize: 28, color: Colors.white)),
            const Text("Cloudy",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "75°",
              style: TextStyle(fontSize: 62, color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 5.0),
                  child: Text("Saturday",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Today",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text("84",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 20.0),
                  child: Text("69",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            const TemperatureList(),
            const Divider(
              color: Colors.white,
            ),
            const WeekDayList(),
          ],
        ),
      ),
    );
  }
}
