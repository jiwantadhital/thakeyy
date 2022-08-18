import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/gallery/photo_gallery_repo.dart';
import 'package:thadri/models/gallery/photo_gallery_model.dart';


class PhotoController extends GetxController{

  final PhotoRepo photoRepo;
  PhotoController({required this.photoRepo});

  List<GalleryModel> _photoList=[];
  List<GalleryModel> get photoList => _photoList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getphotoList()async{
    Response response = await photoRepo.getphotoList();
    if(response.statusCode==200){
      _photoList=[];
      _photoList.addAll(List<GalleryModel>.from(jsonDecode(response.bodyString.toString()).map((x) => GalleryModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}