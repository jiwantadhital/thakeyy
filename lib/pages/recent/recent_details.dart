import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/pages/buttom_bar.dart';
import 'package:thadri/pages/recent/recent_post.dart';
import 'package:flutter_html/flutter_html.dart';


class RecentDetails extends StatelessWidget {
  int pageId;
  RecentDetails({required this.pageId});


  @override
  Widget build(BuildContext context) {
      
  final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(255, 96, 189, 196), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

var blog= Get.find<BlogController>().blogList[pageId];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: 
                [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage("assets/images/myg.png"),
                      ),
                       border: Border.all(width: 1,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            blurRadius: 8,
                            offset: Offset(0,-1),
                          )
                        ]
                    ),
                    padding: EdgeInsets.only(left: 0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: double.maxFinite,
                      width: 60,
                      decoration: BoxDecoration(
                         color: Colors.blue.shade900,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                        border: Border.all(width: 1,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            blurRadius: 6,
                            offset: Offset(0,-1),
                          )
                        ]
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(() => BottomBar());
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color:  Colors.white,
                          ),
                      ),
                    ),  
                  ],
                ),
                ), 
               Expanded(
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 5),
                     child: Column(
                       children: [
                          SizedBox(height: 15,),
                      RichText(text: TextSpan(
                        text: blog.title,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () async {
          await showDialog(
            context: context,
            builder: (_) => imageDialog('My Image', "https://wedothakre.com/public/uploads/file/news/${blog.file.toString()}", context));
        },
                            child: Container(
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                    width: double.maxFinite,
                                    height: 200,
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                  fit: BoxFit.cover,
                                image: NetworkImage(
                                 "https://wedothakre.com/public/uploads/file/news/${blog.file.toString()}",
                                ),
                                ),
                                ),
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(blog.title.toString(),style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Html(data: blog.newsDesc,),
                            ],
                          ),
                          SizedBox(height: 10,),
                         DefaultTabController(
                            length: 4,
                           child: Column(
                             children: [
                               SizedBox(height: 15,),
                               RichText(text: TextSpan(
                        text: "More News",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                        ),
                      ),
                      SizedBox(height: 5,),
                      RecentPage(),
                             ],
                           ),
                         ),
                        ],
                      ),
                       ],
                     ),
                   ),
                 ),
               ),
                ] 
      ),
      ),
    );
    
  }
Widget imageDialog(text, path, context) {
  var blog= Get.find<BlogController>().blogList[pageId];
return Dialog(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$text',
              style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close_rounded),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 600,
        child: Image.network(
          "https://wedothakre.com/public/uploads/file/news/${blog.file.toString()}",
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);}
}

