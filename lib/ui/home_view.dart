import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/ui/forecast_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
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
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.add_box),
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
                      Chip(
                        backgroundColor: Color(0xFF14B1F5),
                        shadowColor: Colors.white,
                        avatar: Icon(Icons.refresh),
                        label: Text('Updating'),
                      ),
                      Hero(
                        tag: 'weather_icon',
                        child: Image.asset(
                          'assets/images/28.png',
                          fit: BoxFit.scaleDown,
                          height: 180,
                          width: 210,
                        ),
                      ),
                      Text(
                        '23',
                        style: TextStyle(fontSize: 140.0),
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
                        Container(
                          height: 100.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.03, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    25.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('23'),
                              Icon(Icons.add_box),
                              Text('11.00')
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.03, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    25.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('23'),
                              Icon(Icons.add_box),
                              Text('11.00')
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.03, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    25.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('23'),
                              Icon(Icons.add_box),
                              Text('11.00')
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.03, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    25.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('23'),
                              Icon(Icons.add_box),
                              Text('11.00')
                            ],
                          ),
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
    );
  }
}
