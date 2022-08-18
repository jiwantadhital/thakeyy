import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/staff/staff_repo.dart';
import 'package:thadri/models/staff/staff_model.dart';


class StaffController extends GetxController{

  final StaffRepo staffRepo;
  StaffController({required this.staffRepo});

  List<StaffModel> _staffList=[];
  List<StaffModel> get staffList => _staffList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getstaffList()async{
    Response response = await staffRepo.getstaffList();
    if(response.statusCode==200){
      print('got staff');
      _staffList=[];
      _staffList.addAll(List<StaffModel>.from(jsonDecode(response.bodyString.toString()).map((x) => StaffModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("staff no");
    }
  }

}