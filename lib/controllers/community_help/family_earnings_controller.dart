import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/family_earning_repo.dart';
import 'package:thadri/models/community_help/family_earnings_model.dart';

class FamilyEarningsController extends GetxController{

  final FamilyEarningRepo familyearningRepo;
  FamilyEarningsController({required this.familyearningRepo});

  List<FamilyEarningModel> _familyearningList=[];
  List<FamilyEarningModel> get familyearningList => _familyearningList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfamilyearningList()async{
    Response response = await familyearningRepo.getfamilyearningList();
    if(response.statusCode==200){
      print("got earnings");
      _familyearningList=[];
      _familyearningList.addAll(List<FamilyEarningModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FamilyEarningModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}