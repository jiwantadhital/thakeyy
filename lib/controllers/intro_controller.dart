import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/intro_repo.dart';
import 'package:thadri/models/intro_model.dart';
import 'package:thadri/models/services_model.dart';

class IntroController extends GetxController{

  final IntroRepo introRepo;
  IntroController({required this.introRepo});

  List<IntroModel> _introList=[];
  List<IntroModel> get introList => _introList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getintroList()async{
    Response response = await introRepo.getintroList();
    if(response.statusCode==200){
      print("service");
      _introList=[];
      _introList.addAll(List<IntroModel>.from(jsonDecode(response.bodyString.toString()).map((x) => IntroModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}