import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';
import 'package:tracker/pages/widgets/habits.dart';


class ExplorePage extends StatelessWidget {
  // final String username;
// Add as many as you want

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
      
              Container(
                child: Text('Explore', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ))
              ),
      
              SizedBox(height: 25),
      
              Container(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Suggested for you', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                      ),
                    InkWell(

                      onTap: () {
                          Navigator.pushNamed(context, '/select-habit');
                        },

                      child: Container(
                        child: Text('View All', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: baseColor
                        ))
                        ),
                    ),
                  ]
                ),
              ),
      
      
            HabitsView(),
      
      
            SizedBox(height: 20),
      
            Container(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Habits Club', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                      ),
                    InkWell(
                      onTap: () {
                          Navigator.pushNamed(context, '/select-habit');
                        },

                      child: Container(
                        child: Text('View All', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: baseColor
                        ))
                        ),
                    ),
                  ]
                ),
            ),
      
      
      
      
            HabitsView(),
            SizedBox(height: 20),
      
            Container(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Challenges', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                      ),
      
                  ]
                ),
              ),







              Container(
                  // color: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        

                        children: [

                        Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 30, 30),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: 
                            Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [



                                  Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: Icon(Icons.timer,
                                          color: baseColor, size: 80)
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Row(
                                      children: [
                                        Text('Best Walkers',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        SizedBox(width: 15),    
                                        Icon(Icons.rocket_launch_rounded, color: baseColor, size: 25)   
                                      ],
                                    ),
                                  ),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,0,20),
                                  child: Text('6 days 18 hours left',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          color: Colors.grey[600])),
                                ),

                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                                  child: Image.asset('assets/progress.png', width: 250)
                                  )


                          ]
                        )
                      ),






                        Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 30, 30),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: 
                            Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                  Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: Icon(Icons.timer,
                                          color: baseColor, size: 80)
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Row(
                                      children: [
                                        Text('Best Walkers',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        SizedBox(width: 15),    
                                        Icon(Icons.rocket_launch_rounded, color: baseColor, size: 25)   
                                      ],
                                    ),
                                  ),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,0,20),
                                  child: Text('6 days 18 hours left',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          color: Colors.grey[600])),
                                ),

                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                                  child: Image.asset('assets/progress.png', width: 250)
                                  )


                          ]
                        )
                      ),






                          
                          ])),
                    ),

                    SizedBox(height: 20),
      
                  Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Learning', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))
                            ),
            
                        ]
                      ),
                    ),

                SizedBox(height: 50),
      
      
      
              
            ],
          ),
        ),
      ),
    );
  }

}
