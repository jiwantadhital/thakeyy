import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/community_help/family_expenses_repo.dart';
import 'package:thadri/models/community_help/family_earnings_model.dart';
import 'package:thadri/models/community_help/family_expenses_model.dart';

class FamilyExpensesController extends GetxController{

  final FamilyExpensesRepo familyexpensesRepo;
  FamilyExpensesController({required this.familyexpensesRepo});

  List<FamilyExpensesModel> _familyexpensesList=[];
  List<FamilyExpensesModel> get familyexpensesList => _familyexpensesList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getfamilyexpensesList()async{
    Response response = await familyexpensesRepo.getfamilyexpensesList();
    if(response.statusCode==200){
      print("got earnings");
      _familyexpensesList=[];
      _familyexpensesList.addAll(List<FamilyExpensesModel>.from(jsonDecode(response.bodyString.toString()).map((x) => FamilyExpensesModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}