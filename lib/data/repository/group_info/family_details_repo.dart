import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FamilyDetailsRepo extends GetxService{
  final ApiClient1 apiClient1;
  FamilyDetailsRepo({required this.apiClient1});


  Future<Response> getfamilyDetailsList()async{
    return await apiClient1.getData(AppConstants.FAMILY_DETAIL_URI);
  }
}