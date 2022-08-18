import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class SliderRepo extends GetxService{
  final ApiClient1 apiClient1;
  SliderRepo({required this.apiClient1});


  Future<Response> getsliderList()async{
    return await apiClient1.getData(AppConstants.SLIDER_URI);
  }
}