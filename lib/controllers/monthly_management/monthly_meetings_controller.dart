import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/help_details_repo.dart';
import 'package:thadri/data/repository/monthly_management/monthly_meetings_repo.dart';
import 'package:thadri/models/community_help/help_details_model.dart';
import 'package:thadri/models/community_help/social_work_model.dart';
import 'package:thadri/models/monthly_managements/monthly_meeting_model.dart';

class MonthlyMeetingsController extends GetxController{

  final MonthlyMeetingRepo monthlyMeetingRepo;
  MonthlyMeetingsController({required this.monthlyMeetingRepo});

  List<MonthlyMeetingsModel> _monthlyMeetingList=[];
  List<MonthlyMeetingsModel> get monthlyMeetingList => _monthlyMeetingList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getmonthlyMeetingList()async{
    Response response = await monthlyMeetingRepo.getmonthlyMeetingList();
    if(response.statusCode==200){
      print("got meetings");
      _monthlyMeetingList=[];
      _monthlyMeetingList.addAll(List<MonthlyMeetingsModel>.from(jsonDecode(response.bodyString.toString()).map((x) => MonthlyMeetingsModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}