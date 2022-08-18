import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/family_earning_repo.dart';
import 'package:thadri/data/repository/community_help/social_work_repo.dart';
import 'package:thadri/models/community_help/family_earnings_model.dart';
import 'package:thadri/models/community_help/social_work_model.dart';

class SocialWorkController extends GetxController{

  final SocialWorkRepo socialWorkRepo;
  SocialWorkController({required this.socialWorkRepo});

  List<SocialWorkModel> _socialWorkList=[];
  List<SocialWorkModel> get socialWorkList => _socialWorkList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getsocialWorkList()async{
    Response response = await socialWorkRepo.getsocialWorkList();
    if(response.statusCode==200){
      print("got earnings");
      _socialWorkList=[];
      _socialWorkList.addAll(List<SocialWorkModel>.from(jsonDecode(response.bodyString.toString()).map((x) => SocialWorkModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}