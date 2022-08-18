import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FundManagementRepo extends GetxService{
  final ApiClient1 apiClient1;
  FundManagementRepo({required this.apiClient1});


  Future<Response> getfundManagementList()async{
    return await apiClient1.getData(AppConstants.FUND_MANAGEMENT_URI);
  }
}