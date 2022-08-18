import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FocalRepo extends GetxService{
  final ApiClient1 apiClient1;
  FocalRepo({required this.apiClient1});


  Future<Response> getfocalList()async{
    return await apiClient1.getData(AppConstants.FOCAL_URI);
  }
}