import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';

class AddHabit extends StatefulWidget {
  const AddHabit({super.key});

  @override
  State<AddHabit> createState() => _AddHabitState();
}

class _AddHabitState extends State<AddHabit> {
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
                child: Text('Create Custom Habits', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ))
              ),
              SizedBox(height: 20),

               Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Create custom habits', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ))
                            ),
            
                        ]
                      ),
                    ),

              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter habit name', // Placeholder
                      filled: true, // Fill the text field
                      fillColor: Colors.grey[200], // Color for the filled text field
                    ),
                    keyboardType: TextInputType.text, // Input type for the text field
                    textInputAction: TextInputAction.done, // Action type for the 'Return' or 'Done' button on the keyboard
                  ),
              ),

              SizedBox(height: 20),

               Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Select habits', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ))
                            ),
            
                        ]
                      ),
                    ),

              SizedBox(height: 10),
              Container(
              // color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [

                    Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.rocket_launch_rounded,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Run',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                        Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.book,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Read',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),



                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.bed,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Sleep',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.energy_savings_leaf,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Water Plant',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                        

                    Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.newspaper,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Journal',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.church,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Pray',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Icon(Icons.local_laundry_service,
                                  color: baseColor, size: 30)),

                                  SizedBox(width: 20),

                          Text('Laundry',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),


                  ])),
            ),

          SizedBox(height: 15),

            Container(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Set Goal', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                      ),
      
                  ]
                ),
              ),

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

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text('10 times', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          )),

                          Text('One or more days', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey[500]
                          )),




                          SizedBox(height: 10),

                          Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            child: Row(
                              
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                      child: Icon(Icons.refresh, size: 30)
                                      ),
                                    SizedBox(width: 10),
                                    Text('Routine', style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ))
                                  ],
                                ),
                                SizedBox(width: 60),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                      child: Icon(Icons.calendar_month, size: 25)
                                      ),
                                    SizedBox(width: 10),
                                    Text('Every Day', style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ))
                                  ],
                                ),

                               
                              ]
                            )
                          ),

                        ],
                      )
                      // color: Colors.white,  
                    ),


            SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Reminders', style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                      ),
      
                  ]
                ),
              ),




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

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text('Remember to set the reminder for the workout today so that you don\'t miss it', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          )),


                          SizedBox(height: 10),

                          Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            child: Row(
                              
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                      child: Icon(Icons.timer, size: 30)
                                      ),
                                    SizedBox(width: 10),
                                    Text('06:00', style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ))
                                  ],
                                ),
                                SizedBox(width: 60),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                      child: Icon(Icons.notifications, size: 25)
                                      ),
                                    SizedBox(width: 10),
                                    Text('Every Day', style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ))
                                  ],
                                ),

                               
                              ]
                            )
                          ),

                    SizedBox(height: 20),
                        ],
                      )
                      // color: Colors.white,  
                    ),

                    Container(
                    margin: EdgeInsets.all(10),

                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(baseColor),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Adjust as needed
                        )),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/login');
                      },
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // To center the content
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10), // Adjust space between text and icon
                            child: Text('Add Reminder',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                          // Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 5),


            ]
          )))
    );
  }
}

