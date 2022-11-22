import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class all_doctors extends StatefulWidget {
  const all_doctors({Key? key}) : super(key: key);

  @override
  State<all_doctors> createState() => _all_doctorsState();
}

class _all_doctorsState extends State<all_doctors> {
  List slider_image=[
    "images/slid1.jpg",
    "images/slide2.jpg",
    "images/slide3.jpg",
  ];
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
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Text("Find The Doctor Nearest to Your Location",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.pink.shade700,width: 1)),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.search,size: 20,),
                            ),
                            Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 5),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Search Now'),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  child: CarouselSlider.builder(
                    itemCount: slider_image.length,
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 1.8,
                      enlargeCenterPage: true,
                    ),
                    itemBuilder: (context, index, realIdx) {
                      return Container(
                          width: 600,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(slider_image[index],
                                fit: BoxFit.cover, width: 700),
                          )
                      );
                    },
                  )
              ),
              SizedBox(
                height: 15,
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
                                      image: DecorationImage(
                                          image: AssetImage("images/baaa.png")
                                      )
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
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 310,
                child:  Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context,int index)
                        {
                          return Container(
                            padding: EdgeInsets.only(left: 5,top: 0),
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 22),
                                    height: 220,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: DecorationImage(
                                            image: AssetImage("images/slide3.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 15,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 130),
                                          width: 143,
                                          child: Card(
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(15))
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Center(
                                                  child: Text("Dr Mohamad Nik",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                  ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Center(
                                                  child: Text("( Counselor )",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 35),
                                          width: 143,
                                          child: Card(
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(15))
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Center(
                                                  child: Text("Appointment Fee",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                               SizedBox(
                                                 height: 3,
                                               ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height:25,
                                                      width: 120,
                                                      decoration: BoxDecoration(
                                                        color: Colors.cyan.shade100,
                                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                                      ),
                                                      child: Container(
                                                        margin: EdgeInsets.only(left: 10,top: 5),
                                                        child: Text(" ₹ 200",
                                                          style: TextStyle(
                                                            decoration: TextDecoration.lineThrough,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 13
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 50,
                                                        child: Container(
                                                          height: 25,
                                                          width: 70,
                                                          decoration: BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                                          ),
                                                          child: MaterialButton(
                                                            onPressed: (){},
                                                            child: Text(" ₹ 120",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 11
                                                            ),),
                                                          ),
                                                        )
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 25,
                                                        width: 45,
                                                        decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                                        ),
                                                        child: Center(
                                                          child: Icon(Icons.remove_red_eye,color: Colors.white,),
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Container(
                                                        height: 25,
                                                        width: 60,
                                                        decoration: BoxDecoration(
                                                            color: Colors.pink.shade500,
                                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                                        ),
                                                        child:  Center(
                                                          child: Text("Book Now"
                                                              ,style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 11
                                                              ,),
                                                          ),
                                                        )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                              ],
                            ),
                          );
                        }
                    )
                ),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
