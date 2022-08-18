import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/monthly_management/fund_management_repo.dart';
import 'package:thadri/models/monthly_managements/fund_management_model.dart';
import 'package:thadri/models/monthly_managements/fund_related_model.dart';


class FundManagementController extends GetxController{

  final FundManagementRepo fundManagementRepo;
  FundManagementController({required this.fundManagementRepo});

  List<FundManagementModel> _fundManagementList=[];
  List<FundManagementModel> get fundManagementList => _fundManagementList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfundManagementList()async{
    Response response = await fundManagementRepo.getfundManagementList();
    if(response.statusCode==200){
      _fundManagementList=[];
      _fundManagementList.addAll(List<FundManagementModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FundManagementModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}