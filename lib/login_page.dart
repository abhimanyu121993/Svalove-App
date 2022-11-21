import 'package:Svalove_App/sva_love_profile.dart';
import 'package:flutter/material.dart';
class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,
            color: Colors.black,),
        ),
        title: Row(
          children: [
            Text("Login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                )
            ),
            Text("  Now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                )
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 50,
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
                      builder: (context)=>sva_love_profile()));
                },
                child: Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Spacer(),
                Text("Forget Password ?",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14
                  ),),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 1,
                    width: 17,
                    decoration: BoxDecoration(
                        color: Colors.black
                    ),
                  ),
                ),
                Center(
                  child: Text(" Or login with ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),),
                ),
                Center(
                  child: Container(
                    height: 1,
                    width: 17,
                    decoration: BoxDecoration(
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/facebook.png")
                            )
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text("Facebook",
                          style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/goggle.png")
                            )
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text("Google",
                          style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
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
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
