import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/family_detail_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';

class FDBottomSheet extends StatelessWidget {
   FDBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FamilyDetailsController>().familyDetailsList[pageId];
    return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.70,
            decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(25.0),
        topRight: const Radius.circular(25.0),
      ),
    ),
            alignment: Alignment.center,
           child: Container(
             margin: EdgeInsets.only(top: 30),
             child: SingleChildScrollView(
               physics: BouncingScrollPhysics(),
               child: Column(
                 children: [
                 NormalInfo(bigtext: "नाम. :",smalltext: group.pariwarikSadakcheName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "Nata :",smalltext: group.nata.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "Sikshya :",smalltext: group.sikxyaName!.education.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "Janma Miti :",smalltext: group.janmaMiti.toString(),),
                 SizedBox(height: 3,),
                SizedBox(height: 3,),
                 NormalInfo(bigtext: "Nagarikta Number :",smalltext: group.nagritaNumber.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "Jati :",smalltext: group.jatiName!.caste.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "Pesha :",smalltext: group.peshaName!.occupation.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}