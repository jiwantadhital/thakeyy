import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/group_info/women_dependent_repo.dart';
import 'package:thadri/models/group_info/women_independent_model.dart';


class WomenDController extends GetxController{

  final WomenDRepo womenDRepo;
  WomenDController({required this.womenDRepo});

  List<WomenDModel> _womenDList=[];
  List<WomenDModel> get womenDList => _womenDList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getwomenDList()async{
    Response response = await womenDRepo.getwomenDList();
    if(response.statusCode==200){
      _womenDList=[];
      _womenDList.addAll(List<WomenDModel>.from(jsonDecode(response.bodyString.toString()).map((x) => WomenDModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}