import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';

class TabsView extends StatefulWidget {
  const TabsView({super.key});

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int activeIndex = 0; // By default, the first item is active
  final days = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  final dayLabels = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun', 'Mon', 'Tue'];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(days.length, (index) {
              // List of days and their labels
              

              return GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: activeIndex == index ? baseColor : Colors.grey[400]!,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        days[index],
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: activeIndex == index ? baseColor : Colors.black,
                        ),
                      ),
                      Text(dayLabels[index], style: TextStyle(color: activeIndex == index ? baseColor : Colors.black,)),
                    ],
                  ),
                ),
              );
            }).expand((item) => [item, SizedBox(width: 15)]).toList()..removeLast(), // remove the last SizedBox
          ),
        ),
      ),
    );
  }
}
