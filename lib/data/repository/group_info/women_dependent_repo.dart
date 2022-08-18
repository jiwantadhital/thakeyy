import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class WomenDRepo extends GetxService{
  final ApiClient1 apiClient1;
  WomenDRepo({required this.apiClient1});


  Future<Response> getwomenDList()async{
    return await apiClient1.getData(AppConstants.WOMEN_D_URI);
  }
}