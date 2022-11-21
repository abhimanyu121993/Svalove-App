import 'package:Svalove_App/chat_with_doctors.dart';
import 'package:flutter/material.dart';
class live_talk_with_doctors extends StatefulWidget {
  const live_talk_with_doctors({Key? key}) : super(key: key);

  @override
  State<live_talk_with_doctors> createState() => _live_talk_with_doctorsState();
}

class _live_talk_with_doctorsState extends State<live_talk_with_doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
                height: 170
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/img1.png"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text("Live talk with doctors",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text("Easily connect with doctor and start",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("Video chat for your better treatment &",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("Prescription",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>chat_with_doctors()));
                },
                child: Text("Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
