import 'package:Svalove_App/welcome_to_svalove.dart';
import 'package:flutter/material.dart';
class chat_with_doctors extends StatefulWidget {
  const chat_with_doctors({Key? key}) : super(key: key);

  @override
  State<chat_with_doctors> createState() => _chat_with_doctorsState();
}

class _chat_with_doctorsState extends State<chat_with_doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
                height: 130
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/img3.png"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Center(
              child: Text("Chat with Doctors",
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
              child: Text("Book an appoinment with doctor chat",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("with doctor via appoinment letter &",
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Center(
              child: Text("get Consultant",
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
                      builder: (context)=>welcome_to_sva_love()));
                },
                child: Text("Start",
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
