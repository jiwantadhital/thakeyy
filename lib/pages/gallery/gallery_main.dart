import 'package:flutter/material.dart';
import 'package:thadri/pages/gallery/photo_gallery.dart';
import 'package:thadri/pages/gallery/video_gallery.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: DefaultTabController(
             length: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shadowColor: Colors.black,
                    child: Container(
                      child: TabBar
                      (
                        unselectedLabelColor: Colors.black,
                        indicator: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        tabs: const [
                          Tab(child: Text("फोटो ग्यालेरी"),),
                           Tab(child: Text("भिडियो ग्यालेरी"),),
                      ]
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5,right: 5,top: 10),
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.2),
                 blurRadius: 11,
                 offset: Offset(0, 1)
               )
                           ],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    ),
                    child: TabBarView(
                      children: [
                        PhotoGallery(),
                        VideoGallery(),
                    ]
                    ),
                  ),
                  SizedBox(height: 15,),
                          SizedBox(height: 5,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}