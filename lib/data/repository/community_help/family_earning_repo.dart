import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FamilyEarningRepo extends GetxService{
  final ApiClient1 apiClient1;
  FamilyEarningRepo({required this.apiClient1});


  Future<Response> getfamilyearningList()async{
    return await apiClient1.getData(AppConstants.FAMILY_EARNING_URI);
  }
}