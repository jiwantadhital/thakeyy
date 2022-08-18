import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class MonthlyMeetingRepo extends GetxService{
  final ApiClient1 apiClient1;
  MonthlyMeetingRepo({required this.apiClient1});


  Future<Response> getmonthlyMeetingList()async{
    return await apiClient1.getData(AppConstants.MONTHLY_MEETINGS_URI);
  }
}