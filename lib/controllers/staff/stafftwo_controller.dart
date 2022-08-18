import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/staff/stafftwo_repo.dart';
import 'package:thadri/models/staff/stafftwo_model.dart';


class StaffTwoController extends GetxController{

  final StaffTwoRepo stafftwoRepo;
  StaffTwoController({required this.stafftwoRepo});

  List<StaffTwoModel> _stafftwoList=[];
  List<StaffTwoModel> get stafftwoList => _stafftwoList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getstafftwoList()async{
    Response response = await stafftwoRepo.getstafftwoList();
    if(response.statusCode==200){
      _stafftwoList=[];
      _stafftwoList.addAll(List<StaffTwoModel>.from(jsonDecode(response.bodyString.toString()).map((x) => StaffTwoModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("staff no");
    }
  }

}