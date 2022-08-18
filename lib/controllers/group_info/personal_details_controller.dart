import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/group_info/personal_details_repo.dart';
import 'package:thadri/models/group_info/personal_details_model.dart';
import 'package:thadri/models/group_info/women_independent_model.dart';


class PersonalDetailsController extends GetxController{

  final PersonalDetailsRepo personalDetailsRepo;
  PersonalDetailsController({required this.personalDetailsRepo});

  List<PersonalDetailsModel> _personalDetailsList=[];
  List<PersonalDetailsModel> get personalDetailsList => _personalDetailsList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getpersonalDetailsList()async{
    Response response = await personalDetailsRepo.getpersonalDetailsList();
    if(response.statusCode==200){
      _personalDetailsList=[];
      _personalDetailsList.addAll(List<PersonalDetailsModel>.from(jsonDecode(response.bodyString.toString()).map((x) => PersonalDetailsModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}