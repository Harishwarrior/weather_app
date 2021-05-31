import 'package:flutter/material.dart';

class WeatherOverview extends StatelessWidget {
  final String iconPath;
  final String rate;
  final String type;
  const WeatherOverview({
    Key? key,
    required this.iconPath,
    required this.rate,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          this.iconPath,
          color: Colors.white.withOpacity(0.7),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(this.rate),
        Text(
          this.type,
          style: TextStyle(color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
