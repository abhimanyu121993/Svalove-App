import 'package:flutter/material.dart';
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  shape: BoxShape.circle
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.photo_camera,color: Colors.black,),
              ),
            ),
          ],
        ),
        title: Text("Sva Love",
                style: TextStyle(
                  color: Colors.pinkAccent.shade700
                ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: Colors.cyan.shade100,
                shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications,color: Colors.black,),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
