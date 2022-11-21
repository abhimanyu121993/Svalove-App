import 'package:flutter/material.dart';
class create_a_new_account extends StatefulWidget {
  const create_a_new_account({Key? key}) : super(key: key);

  @override
  State<create_a_new_account> createState() => _create_a_new_accountState();
}

class _create_a_new_accountState extends State<create_a_new_account> {
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
            Text("Create A New ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                )
            ),
            Text("Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  fontWeight: FontWeight.bold
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
              height: 38,
            ),
            Container(
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Mobile No",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 18,
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
              height: 18,
            ),
            Container(
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Re Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 60,
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
                },
                child: Text("Create Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ),
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
                Text("Already Have Account ? ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14
                  ),
                ),
                Text(" Sign In",
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
