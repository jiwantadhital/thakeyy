import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class GroupDetailsRepo extends GetxService{
  final ApiClient1 apiClient1;
  GroupDetailsRepo({required this.apiClient1});


  Future<Response> getgroupDetailsList()async{
    return await apiClient1.getData(AppConstants.GROUP_DETAILS_URI);
  }
}