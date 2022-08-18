import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FundReleatedRepo extends GetxService{
  final ApiClient1 apiClient1;
  FundReleatedRepo({required this.apiClient1});


  Future<Response> getfundReleatedList()async{
    return await apiClient1.getData(AppConstants.FUND_RELEATED_URI);
  }
}