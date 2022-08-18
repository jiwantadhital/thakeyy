import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/monthly_management/fund_releated_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class FundReleatedBottomSheet extends StatelessWidget {
   FundReleatedBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FundReleatedController>().fundRelatedList[pageId];
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
                 NormalInfo(bigtext: "समुह सदस्य संख्या :",smalltext: group.samuhaName!.samuhaSadaksheSankha.toString(),),
                 SizedBox(height: 3,),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "मासिक वचत दर :",smalltext: group.bachatDar.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जम्मा वचत रकम :",smalltext: group.bachatRakam.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "विलम्व शुल्क :",smalltext: group.bilambaSulka.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}