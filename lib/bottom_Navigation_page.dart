import 'package:Svalove_App/home_page.dart';
import 'package:flutter/material.dart';
class bottom_navigation_page extends StatefulWidget {
  const bottom_navigation_page({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_page> createState() => _bottom_navigation_pageState();
}

class _bottom_navigation_pageState extends State<bottom_navigation_page> {
  int selected_index=0;
  List all_page=[
    home_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        selectedIconTheme: IconThemeData(
            color: Colors.green.shade400
        ),
        selectedItemColor: Colors.green.shade400,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState((){
            selected_index=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_sharp),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: ""
          ),
        ],
      ),
      body: all_page[selected_index],
    );
  }
}
