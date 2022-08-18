import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class StaffTwoRepo extends GetxService{
  final ApiClient1 apiClient1;
  StaffTwoRepo({required this.apiClient1});


  Future<Response> getstafftwoList()async{
    return await apiClient1.getData(AppConstants.STAFF2_URI);
  }
}