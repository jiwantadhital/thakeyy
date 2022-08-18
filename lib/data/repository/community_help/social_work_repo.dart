import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class SocialWorkRepo extends GetxService{
  final ApiClient1 apiClient1;
  SocialWorkRepo({required this.apiClient1});


  Future<Response> getsocialWorkList()async{
    return await apiClient1.getData(AppConstants.SOCIAL_WORK_URI);
  }
}