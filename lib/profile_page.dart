import 'package:flutter/material.dart';
class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.fill
              )
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.cyan.shade100,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.cyan.shade100,
                            shape: BoxShape.circle
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.mail,color: Colors.black,),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.196,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top: 50),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.cyan.shade50,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text("1 k",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Followers",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text("342",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Following",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text("Anamika",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 35),
                                child: Text("My Name is Catherine. I like dancing in the rain and travelling all around the world",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,

                                  ),),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5,right: 5),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue.shade900,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: MaterialButton(
                                      onPressed: (){},
                                      child: Text("Follow",
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5,right: 5),
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: MaterialButton(
                                      onPressed: (){},
                                      child: Text("Message",
                                        style: TextStyle(
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              height: 35,
                              child:  TabBar(
                                indicatorColor: Colors.lightBlue.shade900,
                                unselectedLabelColor: Colors.black,
                                labelColor: Colors.lightBlue.shade900,
                                labelStyle: TextStyle(fontSize: 13),
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "All",
                                      style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                         ),
                                    ),
                                    height: 31,
                                  ),
                                  Tab(
                                    child: Text(
                                      "Photos",
                                      style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    height: 31,
                                  ),
                                  Tab(
                                    child: Text(
                                      "Video",
                                        style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                    height: 31,

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                                child: TabBarView(
                                  children: [
                                   all(),
                                    photos(),
                                    videos(),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 130,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("images/baaa.png"),
                                fit: BoxFit.fill
                              )
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget all(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics:  ScrollPhysics(),
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.6 / 2.7,
            mainAxisSpacing: 2,
            crossAxisSpacing: 3,
            crossAxisCount: 3
        ),
        itemBuilder: (BuildContext, int index) {
          return Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width/2.4,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.white,width: 2),
              image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.fill
              )
            ),
          );
        },
      ),
    );
  }
  Widget photos(){
    return Container(
      child: Center(
        child: Text("Photos"),
      ),
    );
  }
  Widget videos(){
    return Container(
      child: Center(
        child: Text("Videos"),
      ),
    );
  }
}
