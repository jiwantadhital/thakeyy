import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class PhotoRepo extends GetxService{
  final ApiClient1 apiClient1;
  PhotoRepo({required this.apiClient1});


  Future<Response> getphotoList()async{
    return await apiClient1.getData(AppConstants.PHOTO_URI);
  }
}