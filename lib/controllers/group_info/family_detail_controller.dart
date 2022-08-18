import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/group_info/family_details_repo.dart';
import 'package:thadri/models/group_info/family_details_models.dart';


class FamilyDetailsController extends GetxController{

  final FamilyDetailsRepo familyDetailsRepo;
  FamilyDetailsController({required this.familyDetailsRepo});

  List<FamilyDetailsModel> _familyDetailsList=[];
  List<FamilyDetailsModel> get familyDetailsList => _familyDetailsList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfamilyDetailsList()async{
    Response response = await familyDetailsRepo.getfamilyDetailsList();
    if(response.statusCode==200){
      _familyDetailsList=[];
      _familyDetailsList.addAll(List<FamilyDetailsModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FamilyDetailsModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}