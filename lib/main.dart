import 'dart:async';

import 'package:Svalove_App/thousand_of_doctors.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: main_screen(),
  ));
}
class main_screen extends StatefulWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {

  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 5),()async{
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>thousand_of_doctors()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Sva Love",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
