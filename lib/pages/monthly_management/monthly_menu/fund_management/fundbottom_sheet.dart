import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/monthly_management/fund_management_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class FundBottomSheet extends StatelessWidget {
   FundBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FundManagementController>().fundManagementList[pageId];
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
                 NormalInfo(bigtext: "समुहको नाम. :",smalltext: group.samuhaName!.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "ऋणीको संख्या :",smalltext: group.rinSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "ऋण रकम रु. :",smalltext: group.rinRakam.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "असुली गर्नेको संख्या :",smalltext: group.aasuleGarnekoSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जम्मा असुली रकम रु.:",smalltext: group.jammaAasuliRakam.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "व्याज असुली गर्नेको संख्या : ",smalltext: group.bajAasuliGarnekoSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जम्मा व्याज रु. :",smalltext: group.jammaBaj.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "हर्जना दिनेको संख्या :",smalltext: group.hajanaDinkoSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "हर्जना रकम :",smalltext: group.hajanaRakam.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}