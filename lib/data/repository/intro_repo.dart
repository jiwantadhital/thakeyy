import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class IntroRepo extends GetxService{
  final ApiClient1 apiClient1;
  IntroRepo({required this.apiClient1});


  Future<Response> getintroList()async{
    return await apiClient1.getData(AppConstants.INTRO_URI);
  }
}