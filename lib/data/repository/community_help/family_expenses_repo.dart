import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class FamilyExpensesRepo extends GetxService{
  final ApiClient1 apiClient1;
  FamilyExpensesRepo({required this.apiClient1});


  Future<Response> getfamilyexpensesList()async{
    return await apiClient1.getData(AppConstants.FAMILY_EXPENSES_URI);
  }
}