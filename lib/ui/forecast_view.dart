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
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/wind.png',
                                color: Colors.white.withOpacity(0.7),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('13km/hr'),
                              Text(
                                'Wind',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/drop.png',
                                color: Colors.white.withOpacity(0.7),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('24%'),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/water.png',
                                color: Colors.white.withOpacity(0.7),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('87%'),
                              Text(
                                'Precipitation',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
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
                    ListTile(
                      leading: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/storm.png')),
                          Text(
                            ' Rainy',
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
                            '+20°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +14',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/rainy.png')),
                          Text(
                            ' Rainy',
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
                            '+22°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +16',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/storm.png')),
                          Text(
                            ' Storm',
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
                            '+19°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +13',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Thu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/slow.png')),
                          Text(
                            ' Slow',
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
                            '+18°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +12',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/thunder.png')),
                          Text(
                            ' Thunder',
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
                            '+23°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +19',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/rainy.png')),
                          Text(
                            ' Rainy',
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
                            '+25°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +17',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: Image.asset('assets/images/storm.png')),
                          Text(
                            ' Storm',
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
                            '+21°',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' +18',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
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
