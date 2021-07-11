import 'package:badges/badges.dart';
import 'package:bookclub/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "Gas Detection System (GDS)",
          style: TextStyle(color: Colors.black45),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeColor: Colors.green,
                          shape: BadgeShape.square,
                          badgeContent: Text(
                            'The System is On ',
                            style: TextStyle(color: Colors.white),
                          ),
                        
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeColor: Colors.green,
                          shape: BadgeShape.square,
                          badgeContent: Text(
                            'Your House in Safe State',
                            style: TextStyle(color: Colors.white),
                          ),
                         
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //   ElevatedButton(onPressed: () {}, child: Text('Send SMS Worning  to my neighbor')),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),

                    ),
                    onPressed: () {},
                    label: Text('Send a warning SMS to my neighbor'),
                    icon: Icon(Icons.sms),
                  ),
                ],
              ),

              //Hum / Temp  / CO VALUE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.3,
                    center: Text(
                      "30.0° C",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    footer: Text(
                      "Temperature",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.amber,
                  ),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.5,
                    center: Text(
                      "50.0%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    footer: Text(
                      "Humidity",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.green,
                  ),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 5000,
                      percent: 0.2,
                      center: Text("50 ppm"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.orange,
                    ),
                  ),
                  Text(
                    'CO Concentration',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.window_rounded,
                        size: 35,
                        color: Colors.amber,
                      ),
                      SwitchWidget(),
                      Text(
                        'Open the window',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.air,
                        size: 35,
                        color: Colors.amber,
                      ),
                      SwitchWidget(),
                      Text(
                        'Run air conditioner',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),

              Chip(
                padding: EdgeInsets.all(0),
                backgroundColor: Colors.deepPurple,
                label: Text(
                  'Design and developed by Hitache soraya and Messafa nadjet',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
