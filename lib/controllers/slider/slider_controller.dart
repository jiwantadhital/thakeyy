import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/slider/slider_repo.dart';
import 'package:thadri/models/slider/slider_model.dart';


class SliderController extends GetxController{

  final SliderRepo sliderRepo;
  SliderController({required this.sliderRepo});

  List<SliderModel> _sliderList=[];
  List<SliderModel> get sliderList => _sliderList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getsliderList()async{
    Response response = await sliderRepo.getsliderList();
    if(response.statusCode==200){
      _sliderList=[];
      _sliderList.addAll(List<SliderModel>.from(jsonDecode(response.bodyString.toString()).map((x) => SliderModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}