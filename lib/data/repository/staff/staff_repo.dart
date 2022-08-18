import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class StaffRepo extends GetxService{
  final ApiClient1 apiClient1;
  StaffRepo({required this.apiClient1});


  Future<Response> getstaffList()async{
    return await apiClient1.getData(AppConstants.STAFF_URI);
  }
}