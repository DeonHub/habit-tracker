import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';
import 'package:tracker/pages/widgets/tabs.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatelessWidget {
  final String username;
  List<String> tabItems = ["Today", "Tomorrow", "Day After", "Another Day"]; // Add as many as you want

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabItems.length, // number of tabs
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.black,
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/bloody.png'),
                          backgroundColor: Colors.white,
                          radius: 28.0,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi, $username',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Let\'s make a good habit',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),

                

                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: TabBar(
                          isScrollable: true, // This ensures the tabs can be scrolled if there are too many to fit on the screen
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          tabs: tabItems.map((tabItem) => Tab(
                            child: Text(
                              tabItem,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )).toList(),
                        ),
                      ),
                    ),


                Container(
                  height: 100, // specify the height of the container
                  child: TabBarView(
                    children: [

                      TabsView(),
                      TabsView(), 
                      TabsView(), 
                      TabsView(), 
                      // content for second tab
                    ],
                  ),
                ),

                SizedBox(height: 10),


// Graph goes here
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[400]!,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  height: 220, // You can adjust the height as needed
                 
                  // Setting the background to white
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 0, 
                      centerSpaceRadius: 40, 
                      sections: [
                        PieChartSectionData(
                          color: Colors.red,
                          value: 3,
                          title: '3',
                          radius: 50,
                          titleStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        PieChartSectionData(
                          color: Colors.blue,
                          value: 1,
                          title: '1',
                          radius: 50,
                          titleStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        // ... Add more sections as needed based on your data
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Row(
                        children: [
                          Icon(Icons.pie_chart, color: baseColor, size: 80),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your goals almost complete!', 
                                 style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              SizedBox(height: 10),
                              Text('1 of 5 completed', 
                                  style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                )),
                              
                            ],
                            )
                        ],
                      )
                      // color: Colors.white,  
                    ),



                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Challenges', 
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                    ),


                    SizedBox(height: 10),


                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Row(
                        children: [
                          Icon(Icons.watch, color: baseColor, size: 80),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Best Runners', 
                                 style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              SizedBox(height: 10),
                              Text('4 days 15 hours left', 
                                  style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                )),
                              
                            ],
                            )
                        ],
                      )
                      // color: Colors.white,  
                    ),



                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Habits', 
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                    ),


                    SizedBox(height: 10),


                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Row(
                        children: [
                          Icon(Icons.water_drop, color: baseColor, size: 80),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Drinking the water', 
                                 style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              SizedBox(height: 10),
                              Text('1000/4000 ML', 
                                  style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                )),
                              
                            ],
                            )
                        ],
                      ),
                      // color: Colors.white,  
                    ),
                   SizedBox(height: 80),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
