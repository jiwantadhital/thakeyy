import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/help_details_repo.dart';
import 'package:thadri/models/community_help/help_details_model.dart';
import 'package:thadri/models/community_help/social_work_model.dart';

class HelpDetailsController extends GetxController{

  final HelpDetailsRepo helpDetailsRepo;
  HelpDetailsController({required this.helpDetailsRepo});

  List<HelpDetailsModel> _helpDetailsList=[];
  List<HelpDetailsModel> get helpDetailsList => _helpDetailsList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> gethelpdetailsList()async{
    Response response = await helpDetailsRepo.gethelpdetailsList();
    if(response.statusCode==200){
      print("got help");
      _helpDetailsList=[];
      _helpDetailsList.addAll(List<HelpDetailsModel>.from(jsonDecode(response.bodyString.toString()).map((x) => HelpDetailsModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}