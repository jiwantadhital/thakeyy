import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/focal_controller.dart';
import 'package:thadri/controllers/community_help/social_work_controller.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class FocalBottomSheet extends StatelessWidget {
   FocalBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FocalController>().focalList[pageId];
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
                 NormalInfo(bigtext: "फोकलपर्सन :",smalltext: group.focalparson!.focalparsion.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुहको नाम :",smalltext: group.samuhaName!.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कार्य विवरण:",smalltext: group.karyeBibarand.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "सहभागी संख्या :",smalltext: group.sahabhagiSankha.toString(),),
                 SizedBox(height: 3,),
                 Align(
      alignment: Alignment.topLeft,
      child:Container(
        padding: EdgeInsets.only(left: 20,right: 10,top: 15,bottom: 15),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
         
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(bigtext: "मिति/अवधि. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("देखि:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.mitiDekhi.toString(),),
              ],
            ),
             SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("सम्म:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.mitiSamma.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
      SizedBox(height: 3,),
                 NormalInfo(bigtext: "लाभान्वीत संख्या :",smalltext: group.labhanbitSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "प्रगति/उपलब्धी:",smalltext: group.pragatiUannati.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "सहयोगी निकाय (छ भने उल्लेख गर्ने) :",smalltext: group.sahayogiNikaye.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}