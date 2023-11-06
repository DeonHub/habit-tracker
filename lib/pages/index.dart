import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tracker/api/noti.dart';
import 'package:tracker/globals.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
    _scheduleNotification();

  }


  void _scheduleNotification() async {
    var scheduledTime = DateTime.now().add(Duration(seconds: 10));
    await Noti.scheduleNotification(
      id: 1,
      title: "Welcome to Habit Tracker",
      body: "Let's us help you develop best habits",
      scheduledDate: scheduledTime,
      payload: "Sample payload",
      fln: flutterLocalNotificationsPlugin,
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: baseColor,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            color: baseColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/trans.png'),
                // Image.asset('assets/logo.png', width:20, height: 20),
                Text('Habit Tracker',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                Text('Develop Best Habits',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal)),

                SizedBox(
                  height: 120,
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  // color: Colors.red,

                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Adjust as needed
                      )),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // To center the content
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 10), // Adjust space between text and icon
                          child: Text('Get Started',
                              style: TextStyle(
                                  color: baseColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500)),
                        ),
                        Icon(Icons.arrow_forward, color: baseColor)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )),
        ));
  }
}
