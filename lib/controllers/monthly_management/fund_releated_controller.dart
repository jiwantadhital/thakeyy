import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/monthly_management/fund_releated_repo.dart';
import 'package:thadri/models/monthly_managements/fund_related_model.dart';
import 'package:thadri/models/monthly_managements/monthly_meeting_model.dart';

class FundReleatedController extends GetxController{

  final FundReleatedRepo fundReleatedRepo;
  FundReleatedController({required this.fundReleatedRepo});

  List<FundRelatedModel> _fundReleatedList=[];
  List<FundRelatedModel> get fundRelatedList => _fundReleatedList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfundReleatedList()async{
    Response response = await fundReleatedRepo.getfundReleatedList();
    if(response.statusCode==200){
      _fundReleatedList=[];
      _fundReleatedList.addAll(List<FundRelatedModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FundRelatedModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}