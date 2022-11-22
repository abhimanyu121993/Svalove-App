import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int? currentPage=0;
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
        leadingWidth: 70,
        leading: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  shape: BoxShape.circle
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.photo_camera,color: Colors.black,),
              ),
            ),
          ],
        ),
        title: Text("Sva Love",
                style: TextStyle(
                  color: Colors.pinkAccent.shade700
                ),
        ),
        centerTitle: true,
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
          )
        ],
      ),
     body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.symmetric(horizontal: 5),
         child:  Column(
           children: [
             SizedBox(
               height: 10,
             ),
             Container(
               height: 120,
               child:  Expanded(
                   child: ListView.builder(
                       itemCount: 10,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (BuildContext context,int index)
                       {
                         return Stack(
                           children: [
                             Container(
                               height: 75,
                               width: 75,
                               decoration: BoxDecoration(
                                 border: GradientBoxBorder(
                                   gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
                                   width: 2,
                                 ),
                                 borderRadius: BorderRadius.all(Radius.circular(30)),
                               ),
                               child: Center(
                                 child: Container(
                                   height: 68,
                                   width: 68,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.all(Radius.circular(30)),
                                       image: DecorationImage(
                                           image: AssetImage("images/status.jpg")
                                       )
                                   ),
                                 ),
                               ),
                             ),
                             Positioned(
                                 child: Column(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(top: 50,left: 50),
                                       height: 30,
                                       width: 30,
                                       decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.pinkAccent
                                       ),
                                       child: Icon(Icons.favorite,color: Colors.white,size: 19,),
                                     ),
                                     Container(
                                       child: Text("Imilia",
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black
                                         )
                                         ,),
                                     )
                                   ],
                                 )
                             )
                           ],
                         );
                       }
                   )
               ),
             ),
             Container(
                 child: CarouselSlider.builder(
                   itemCount: slider_image.length,
                   options: CarouselOptions(
                     autoPlay: true,
                     aspectRatio: 2,
                     enlargeCenterPage: true,
                   ),
                   itemBuilder: (context, index, realIdx) {
                     return Container(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                         width: 500,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child:ClipRRect(
                           borderRadius: BorderRadius.circular(12.0),
                           child: Image.asset(slider_image[index],
                               fit: BoxFit.cover, width: 500),
                         )
                     );
                   },
                 )
             ),
             SizedBox(
               height: 15,
             ),
             Container(
               height: 50,
               padding: EdgeInsets.symmetric(horizontal: 5),
               child: Expanded(
                 child: ListView.builder(
                     itemCount: 10,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext context,int index)
                     {
                       return Container(
                         margin: EdgeInsets.only(left: 7),
                         height: 35,
                         width: 140,
                         decoration: BoxDecoration(
                             border: GradientBoxBorder(
                               gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.all(Radius.circular(25))
                         ),
                         child: Row(
                           children: [
                             SizedBox(
                               width: 2,
                             ),
                             Container(
                               height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(
                                       image: AssetImage("images/status.jpg"),
                                       fit: BoxFit.fill
                                   )
                               ),
                             ),
                             Spacer(),
                             Center(
                               child: Text("Adult Hii",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: 5,
                             )
                           ],
                         ),
                       );
                     }
                 ),
               ),
             ),
             SizedBox(
               height: 5,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 10),
               height: 45,
               child: Row(
                 children: [
                   Center(
                     child: Text("Life Influencers",
                       style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20
                       )
                       ,),
                   ),
                   Spacer(),
                   Center(
                     child: Text("View more",
                       style: TextStyle(
                           color: Colors.blue.shade700,
                           fontSize: 14
                       )
                       ,),
                   ),
                 ],
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               height: 185,
               padding: EdgeInsets.symmetric(horizontal: 5),
               child: Expanded(
                 child: ListView.builder(
                     itemCount: 10,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext context,int index)
                     {
                       return Container(
                         margin: EdgeInsets.all(5),
                         height: 185,
                         width: MediaQuery.of(context).size.width/1.2,
                         decoration: BoxDecoration(
                           color: Colors.cyan.shade100,
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                         ),
                         child: Column(
                           children: [
                             SizedBox(
                               height: 10,
                             ),
                             Container(
                               padding: EdgeInsets.symmetric(horizontal: 5),
                               child: Row(
                                 children: [
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Container(
                                     height: 35,
                                     width: 35,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                         image: AssetImage("images/status.jpg")
                                       )
                                     ),
                                   ),
                                   SizedBox(
                                     width: 20,
                                   ),
                                   Column(
                                     children: [
                                       Text("Sadhguru",
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                           fontSize: 16,
                                         )
                                         ,),
                                       Text("@ Sadhguru",
                                         style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 12,
                                         )
                                         ,)
                                     ],
                                   ),
                                   Spacer(),
                                   Container(
                                     height: 23,
                                     width: 70,
                                     decoration: BoxDecoration(
                                       color: Colors.black,
                                       borderRadius: BorderRadius.all(Radius.circular(10))
                                     ),
                                     child: MaterialButton(
                                       onPressed: (){},
                                       child: Text("Follow"
                                         ,style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12
                                           
                                         )
                                         ,),
                                     ),
                                   ),
                                   SizedBox(
                                     width: 10,
                                   ),
                                 ],
                               ),
                             ),
                            Spacer(),
                             Text("Take the time to train your mind......"
                               ,style: TextStyle(
                                 color: Colors.black,
                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                           ],
                         ),
                       );
                     }
                 ),
               ),
             ),
             SizedBox(
               height: 45,
             )
           ],
         ),
       )
     ),
    );
  }
}


class PlayoutExample extends StatefulWidget {
  final String url;
  const PlayoutExample({Key? key, required this.url}) : super(key: key);

  @override
  State<PlayoutExample> createState() => _PlayoutExampleState();
}
class _PlayoutExampleState extends State<PlayoutExample> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  double _aspectRatio = 26 / 9;
  @override
  initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.url);
    _chewieController = ChewieController(
      allowedScreenSleep: false,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      videoPlayerController: _videoPlayerController,
      aspectRatio: _aspectRatio,
      autoInitialize: true,
      autoPlay: true,
      showControls: true,
    );
    _chewieController.addListener(() {
      if (_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }
}
