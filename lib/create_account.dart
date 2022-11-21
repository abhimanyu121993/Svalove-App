import 'package:Svalove_App/create_a_new_account.dart';
import 'package:Svalove_App/login_page.dart';
import 'package:flutter/material.dart';
class create_Account extends StatefulWidget {
  const create_Account({Key? key}) : super(key: key);

  @override
  State<create_Account> createState() => _create_AccountState();
}

class _create_AccountState extends State<create_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/5,
          ),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/1.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/img4.png"),
                    fit: BoxFit.fill
                )
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text("Make An Appoinment",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black
              ),
            ),
          ),
          Center(
            child: Text("With Doctor",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Center(
            child: Text("Access thousands of trusted Doctors",
              style: TextStyle(
                  color: Colors.grey.shade800
              ),
            ),
          ),
          Center(
            child: Text("Instantly",
              style: TextStyle(
                  color: Colors.grey.shade800
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/8,
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
                    builder: (context)=>create_a_new_account()));
              },
              child: Text("Create Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width/1.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.black,width: 1)
            ),
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>login_page()));
              },
              child: Text("Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),),
            ),
          ),
         Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Are You A Doctor ? ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                ),
              ),
              Text(" Here !",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
