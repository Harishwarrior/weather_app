import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/theme/theme.dart';
import 'package:weather_app/ui/forecast_view.dart';
import 'package:weather_app/ui/widgets/time_weather_tile.dart';
import 'package:weather_app/ui/widgets/weather_overview.dart';
import 'package:weather_app/utils/media_query.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: customTheme.scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  //top portion container
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2, color: Colors.white),
                    borderRadius: BorderRadius.circular(45),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF064090),
                          offset: Offset(0, 25),
                          blurRadius: 3,
                          spreadRadius: -10)
                    ],
                    gradient: LinearGradient(
                        colors: [
                          const Color(0xFF16C1F7),
                          const Color(0xFF146DF3),
                        ],
                        begin: const FractionalOffset(1.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/button.png',
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                'Minsk',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '.  Updating',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.4, color: Colors.white),
                            borderRadius: BorderRadius.circular(25.0)),
                      ),
                      Image.asset(
                        'assets/images/storm.png',
                        fit: BoxFit.scaleDown,
                        height: 180,
                        width: 210,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '21',
                            style: TextStyle(
                                fontSize: 140.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '°',
                            style: TextStyle(
                                fontSize: 130,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Text(
                        'Thunderstorm',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        'Monday,17 May',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          thickness: 0.1,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WeatherOverview(
                              rate: '13km/hr',
                              iconPath: 'assets/images/wind.png',
                              type: 'Wind',
                            ),
                            WeatherOverview(
                              iconPath: 'assets/images/drop.png',
                              rate: '24%',
                              type: 'Humidity',
                            ),
                            WeatherOverview(
                              iconPath: 'assets/images/water.png',
                              rate: '87%',
                              type: 'Precipitation',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SelectableText('7 days >', onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForecastView()),
                            );
                          }),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TimeWeatherTile(
                              temp: '23°',
                              iconPath: 'assets/images/rainy.png',
                              time: '10.00'),
                          Container(
                            height: displayHeight(context) * 0.15,
                            width: displayWidth(context) * 0.20,
                            decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  colors: [
                                    const Color(0xFF14C2F5),
                                    const Color(0xFF146DF3),
                                  ],
                                  begin: const FractionalOffset(1.0, 0.0),
                                  end: const FractionalOffset(0.0, 1.0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                              border:
                                  Border.all(width: 0.03, color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      25.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('21°'),
                                SizedBox(
                                    height: 40.0,
                                    child: Image.asset(
                                        'assets/images/thunder.png')),
                                Text(
                                  '11.00',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                          TimeWeatherTile(
                              temp: '22°',
                              iconPath: 'assets/images/rainy.png',
                              time: '12.00'),
                          TimeWeatherTile(
                            temp: '19°',
                            iconPath: 'assets/images/nightwind.png',
                            time: '01.00',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
