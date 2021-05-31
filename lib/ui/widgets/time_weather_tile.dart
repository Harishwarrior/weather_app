import 'package:flutter/material.dart';
import 'package:weather_app/utils/media_query.dart';

class TimeWeatherTile extends StatelessWidget {
  final String temp;
  final String iconPath;
  final String time;
  const TimeWeatherTile({
    Key? key,
    required this.temp,
    required this.iconPath,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.15,
      width: displayWidth(context) * 0.20,
      decoration: BoxDecoration(
        border: Border.all(width: 0.03, color: Colors.white),
        borderRadius: BorderRadius.all(
            Radius.circular(25.0) //                 <--- border radius here
            ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(this.temp),
          SizedBox(height: 40.0, child: Image.asset(this.iconPath)),
          Text(
            this.time,
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
