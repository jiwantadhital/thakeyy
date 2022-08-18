import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class ServiceRepo extends GetxService{
  final ApiClient apiClient;
  ServiceRepo({required this.apiClient});


  Future<Response> getserviceList()async{
    return await apiClient.getData(AppConstants.SERVICE_URI);
  }
}