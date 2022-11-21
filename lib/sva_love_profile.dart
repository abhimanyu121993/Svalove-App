import 'package:Svalove_App/bottom_Navigation_page.dart';
import 'package:flutter/material.dart';
class sva_love_profile extends StatefulWidget {
  const sva_love_profile({Key? key}) : super(key: key);

  @override
  State<sva_love_profile> createState() => _sva_love_profileState();
}

class _sva_love_profileState extends State<sva_love_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 4,
        title: Row(
          children: [
            Text("Sva Love",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent.shade700
              )
              ,),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/profile.png"),
                        fit: BoxFit.fill
                      )
                    ),
                  )
                ),
                Positioned(
                  left: 190,
                    top: 50,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.add,color: Colors.black,size: 33,),
                    )
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Avelo_Roy",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextFormField(
                maxLines: 15,
                minLines: 6,
                decoration: InputDecoration(
                  hintText: "Write about yourself.....",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text("Forget Password?",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>bottom_navigation_page()));
                },
                child: Text("Lets Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
