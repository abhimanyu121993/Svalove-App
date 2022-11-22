import 'package:flutter/material.dart';
class top_rated_doctors extends StatefulWidget {
  const top_rated_doctors({Key? key}) : super(key: key);

  @override
  State<top_rated_doctors> createState() => _top_rated_doctorsState();
}

class _top_rated_doctorsState extends State<top_rated_doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.drag_handle)
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/baaa.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.lightBlue
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("Hello Good Afteroon",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("Leslie Alexander",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xff1fbdcd),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.white,),
                            SizedBox(
                              width: 2,
                            ),
                            Text("Italy, France",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            )
                          ],
                        ),
                        Text("Find The Doctor Nearest to Your Location",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.white,width: 1)),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.search,size: 20,color: Colors.white,),
                                ),
                                Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 5),
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(color: Colors.white),
                                          hintText: 'Search Now'),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
