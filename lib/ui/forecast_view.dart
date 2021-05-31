import 'package:flutter/material.dart';
import 'package:weather_app/theme/theme.dart';

class ForecastView extends StatefulWidget {
  ForecastView({Key? key}) : super(key: key);

  @override
  _ForecastViewState createState() => _ForecastViewState();
}

class _ForecastViewState extends State<ForecastView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: customTheme.scaffoldBackgroundColor,
        body: SingleChildScrollView(
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
                        const Color(0xFF14C2F5),
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
                        GestureDetector(
                          child: Icon(Icons.arrow_back_ios),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            Text(
                              ' 7 days',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/rainy.png',
                          fit: BoxFit.scaleDown,
                          height: 140,
                          width: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tomorrow',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: 80.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '/17°',
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              'Rainy-Cloudy',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ],
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
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    WeekTile(
                      iconPath: 'assets/images/storm.png',
                      day: 'Mon',
                      weatherType: ' Rainy',
                      temp: '+20°',
                      tempAvg: ' +14',
                    ),
                    WeekTile(
                        day: 'Tue',
                        iconPath: 'assets/images/rainy.png',
                        weatherType: ' Rainy',
                        temp: '+22°',
                        tempAvg: ' +16'),
                    WeekTile(
                        day: 'Wed',
                        iconPath: 'assets/images/storm.png',
                        weatherType: ' Storm',
                        temp: '+19°',
                        tempAvg: ' +13'),
                    WeekTile(
                        day: 'Thu',
                        iconPath: 'assets/images/slow.png',
                        weatherType: ' Slow',
                        temp: '+18°',
                        tempAvg: ' +12'),
                    WeekTile(
                        day: 'Fri',
                        iconPath: 'assets/images/thunder.png',
                        weatherType: ' Thunder',
                        temp: '+23°',
                        tempAvg: ' +19'),
                    WeekTile(
                        day: 'Sat',
                        iconPath: 'assets/images/rainy.png',
                        weatherType: ' Rainy',
                        temp: '+25°',
                        tempAvg: ' +17'),
                    WeekTile(
                        day: 'Sun',
                        iconPath: 'assets/images/storm.png',
                        weatherType: ' Storm',
                        temp: '+21°',
                        tempAvg: ' +18'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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

class WeekTile extends StatelessWidget {
  final String day;
  final String iconPath;
  final String weatherType;
  final String temp;
  final String tempAvg;
  const WeekTile({
    Key? key,
    required this.day,
    required this.iconPath,
    required this.weatherType,
    required this.temp,
    required this.tempAvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        this.day,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30.0, child: Image.asset(this.iconPath)),
          Text(
            this.weatherType,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5)),
          )
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            this.temp,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            this.tempAvg,
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
