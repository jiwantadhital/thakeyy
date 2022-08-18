import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class PersonalDetailsRepo extends GetxService{
  final ApiClient1 apiClient1;
  PersonalDetailsRepo({required this.apiClient1});


  Future<Response> getpersonalDetailsList()async{
    return await apiClient1.getData(AppConstants.PERSONAL_DETAIL_URI);
  }
}