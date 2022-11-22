import 'package:flutter/material.dart';
class sva_love_search extends StatefulWidget {
  const sva_love_search({Key? key}) : super(key: key);

  @override
  State<sva_love_search> createState() => _sva_love_searchState();
}

class _sva_love_searchState extends State<sva_love_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Text("Sva Love",
          style: TextStyle(
              color: Colors.pinkAccent.shade700
          ),
        ),
        actions: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: Colors.cyan.shade100,
                shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications,color: Colors.black,),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: Colors.cyan.shade100,
                shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.photo_camera,color: Colors.black,),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width/1.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink.shade700,width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade700,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //Bo
                    ]
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(
                              width: 2,
                            ),
                            Text("Italy, France",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16
                              ),
                            )
                          ],
                        ),
                        Text("Find The Doctor Nearest to Your Location",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink.shade700),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.search,color: Colors.black,),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Search Now",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink.shade700,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Center(
                        child: Text("Ally Support",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink.shade700,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Center(
                        child: Text("Take Assesment",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink.shade700,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Center(
                        child: Text("Professionals",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13),
                height: 340,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics:  ScrollPhysics(),
                      itemCount: 9,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3.1 / 2.9,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 3,
                          crossAxisCount: 3
                      ),
                      itemBuilder: (BuildContext, int index) {
                        return Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                              Text("Ally Support",
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
