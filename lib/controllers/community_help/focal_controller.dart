import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/focal_repo.dart';
import 'package:thadri/models/community_help/focal_model.dart';

class FocalController extends GetxController{

  final FocalRepo focalRepo;
  FocalController({required this.focalRepo});

  List<FocalModel> _focalList=[];
  List<FocalModel> get focalList => _focalList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfocalList()async{
    Response response = await focalRepo.getfocalList();
    if(response.statusCode==200){
      print("got focal");
      _focalList=[];
      _focalList.addAll(List<FocalModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FocalModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("no focal");
    }
  }

}