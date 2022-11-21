import 'package:Svalove_App/create_account.dart';
import 'package:flutter/material.dart';
class welcome_to_sva_love extends StatefulWidget {
  const welcome_to_sva_love({Key? key}) : super(key: key);

  @override
  State<welcome_to_sva_love> createState() => _welcome_to_sva_loveState();
}

class _welcome_to_sva_loveState extends State<welcome_to_sva_love> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width/4,
          ),
          Center(
            child: Text("Welcome To",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(
            height: 10
          ),
          Center(
            child: Text("Svalove",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text("Book an appoinment with doctor chat",
              style: TextStyle(
                  color: Colors.black,
                fontSize: 16
              ),
            ),
          ),
          Center(
            child: Text("with doctor appoinment letter &",
              style: TextStyle(
                  color: Colors.black,
                fontSize: 16
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/1.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/logo_dil.png"),
                fit: BoxFit.fill
              )
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
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
                    builder: (context)=>create_Account()));
              },
              child: Text("Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have Account ? ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                ),
              ),
              Text(" Create Now",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
