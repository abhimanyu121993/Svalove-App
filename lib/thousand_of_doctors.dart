import 'package:Svalove_App/live_talk_with_doctors.dart';
import 'package:flutter/material.dart';
class thousand_of_doctors extends StatefulWidget {
  const thousand_of_doctors({Key? key}) : super(key: key);

  @override
  State<thousand_of_doctors> createState() => _thousand_of_doctorsState();
}

class _thousand_of_doctorsState extends State<thousand_of_doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 140
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.5,
              height: MediaQuery.of(context).size.height/2.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/img2.png"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text("Thousands of Doctors",
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
              child: Text("Access thousands of doctor instanly",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("You can easily contact with the doctors",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("And contact for your needs",
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
                      builder: (context)=>live_talk_with_doctors()));
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
