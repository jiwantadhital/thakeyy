import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class CollegeRepo extends GetxService{
  final ApiClient apiClient;
  CollegeRepo({required this.apiClient});


  Future<Response> getcollegeList()async{
    return await apiClient.getData(AppConstants.COLLEGE_URI);
  }
}