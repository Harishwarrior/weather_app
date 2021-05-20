import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/ui/forecast_view.dart';
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
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  //top portion container
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2, color: Colors.white),
                    borderRadius: BorderRadius.circular(45),
                    // borderRadius:
                    //     BorderRadius.vertical(bottom: Radius.circular(50.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF064090),
                          offset: Offset(0, 23),
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
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '23',
                            style: TextStyle(fontSize: 140.0),
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
                            height: displayHeight(context) * 0.15,
                            width: displayWidth(context) * 0.20,
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
                                Text('23'),
                                Icon(Icons.add_box),
                                Text('11.00')
                              ],
                            ),
                          ),
                          Container(
                            height: displayHeight(context) * 0.15,
                            width: displayWidth(context) * 0.20,
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
                            height: displayHeight(context) * 0.15,
                            width: displayWidth(context) * 0.20,
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
      ),
    );
  }
}
