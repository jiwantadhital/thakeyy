import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/gallery/video_gallery_repo.dart';
import 'package:thadri/models/gallery/video_gallery_model.dart';


class VideoController extends GetxController{

  final VideoRepo videoRepo;
  VideoController({required this.videoRepo});

  List<VideoModel> _videoList=[];
  List<VideoModel> get videoList => _videoList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getvideoList()async{
    Response response = await videoRepo.getvideoList();
    if(response.statusCode==200){
      _videoList=[];
      _videoList.addAll(List<VideoModel>.from(jsonDecode(response.bodyString.toString()).map((x) => VideoModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}