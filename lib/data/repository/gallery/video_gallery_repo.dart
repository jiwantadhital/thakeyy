import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class VideoRepo extends GetxService{
  final ApiClient1 apiClient1;
  VideoRepo({required this.apiClient1});


  Future<Response> getvideoList()async{
    return await apiClient1.getData(AppConstants.VIDEO_URI);
  }
}