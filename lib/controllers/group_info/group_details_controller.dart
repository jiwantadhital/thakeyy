import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/group_info/group_details_repo.dart';
import 'package:thadri/models/group_info/group_details_model.dart';


class GroupDetailsController extends GetxController{

  final GroupDetailsRepo groupDetailsRepo;
  GroupDetailsController({required this.groupDetailsRepo});

  List<GroupDetailsModel> _groupDetailsList=[];
  List<GroupDetailsModel> get groupDetailsList => _groupDetailsList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getgroupDetailsList()async{
    Response response = await groupDetailsRepo.getgroupDetailsList();
    if(response.statusCode==200){
      _groupDetailsList=[];
      _groupDetailsList.addAll(List<GroupDetailsModel>.from(jsonDecode(response.bodyString.toString()).map((x) => GroupDetailsModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}