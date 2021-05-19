import 'package:flutter/material.dart';

class ForecastView extends StatefulWidget {
  ForecastView({Key key}) : super(key: key);

  @override
  _ForecastViewState createState() => _ForecastViewState();
}

class _ForecastViewState extends State<ForecastView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
              child: Container(
                //top portion container
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
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
                              ' 7 Days',
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
                        Hero(
                          tag: 'weather_icon',
                          child: Image.asset(
                            'assets/images/28.png',
                            fit: BoxFit.scaleDown,
                            height: 100,
                            width: 150,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tomorrow'),
                            Text(
                              '23/17',
                              style: TextStyle(fontSize: 80.0),
                            ),
                            Text(
                              'Thunderstorm',
                              style: TextStyle(fontSize: 20.0),
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
                              Icon(Icons.ac_unit),
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
                              Icon(Icons.lightbulb_outline),
                              Text('13km/hr'),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.ac_unit),
                              Text('13km/hr'),
                              Text(
                                'rain',
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
            ),
          ],
        ),
      ),
    );
  }
}
