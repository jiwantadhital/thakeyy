import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class HelpDetailsRepo extends GetxService{
  final ApiClient1 apiClient1;
  HelpDetailsRepo({required this.apiClient1});


  Future<Response> gethelpdetailsList()async{
    return await apiClient1.getData(AppConstants.HELP_DETAILS_URI);
  }
}