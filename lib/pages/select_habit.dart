import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';
// import 'package:tracker/pages/widgets/habits.dart';

final icons = ['e798', 'e566', 'ea78', 'e666', 'eb81', 'f205', 'e02f', 'e53a'];
final labels = ['Drink Water', 'Running', 'Yoga', 'Study', 'Journal', 'Water Plants', 'Read Books', 'Sleep'];


class SelectHabitPage extends StatelessWidget {
  // final String username;
// Add as many as you want


  final iconLabels = List<Map<String, String>>.generate(icons.length, (index) {
    return {
      'icon': icons[index],
      'label': labels[index]
    };
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
              backgroundColor: Colors.grey[200],
              title: Text(
                'Select Habit',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black), // Change the color to your desired color
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),




      body:SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 10),


                  Container(
                    padding: EdgeInsets.all(20),
                    child: GridView.builder(
                      shrinkWrap: true,  // This will ensure that the GridView takes the minimum space required
                      physics: NeverScrollableScrollPhysics(),  // Disables the grid's own scroll
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,  // 2 columns
                        mainAxisSpacing: 10,  // spacing between the rows
                        crossAxisSpacing: 10,  // spacing between the columns
                        childAspectRatio: 1,  // aspect ratio to control the size of each container
                      ),



                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white,  // Color of your container
                          borderRadius: BorderRadius.circular(10),  // Rounded corners
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // centers the content vertically
                          children: [
                            // Using the icon data from iconLabels for the icon
                            Icon(IconData(int.parse(iconLabels[index]['icon']!, radix: 16), fontFamily: 'MaterialIcons'), color: baseColor, size: 80),
                            // Using the label data from iconLabels for the text
                            Text(iconLabels[index]['label']!, style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                            )),
                          ],
                        ),
                      );
                    },



                      itemCount: iconLabels.length,  // 8 containers in total
                    ),
                  ),




                  Container(
                    margin: EdgeInsets.all(20),

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
                            child: Text('Continue',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          )

    );
  }

}


