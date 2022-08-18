import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/gallery/video_gallery_controller.dart';
import 'package:thadri/pages/gallery/video.dart';


class VideoGallery extends StatelessWidget {
  const VideoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      height: 400,
      child: GetBuilder<VideoController>(builder: (video){
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: video.videoList.length,
          itemBuilder: (context, index) {
        return VideoPlayerScreen(link: video.videoList[index].videoLink.toString(),title:video.videoList[index].title.toString());
          });
          })
    );
  }
}
