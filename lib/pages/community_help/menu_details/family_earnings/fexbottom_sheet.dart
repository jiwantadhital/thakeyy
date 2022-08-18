import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/family_earnings_controller.dart';
import 'package:thadri/controllers/community_help/family_expenses_controller.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class FEBottomSheet extends StatelessWidget {
   FEBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FamilyEarningsController>().familyearningList[pageId];
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
                 NormalInfo(bigtext: "सदस्य संख्या. :",smalltext: group.samuhaName!.samuhaSadaksheSankha.toString(),),
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
            MainText(bigtext: "आम्दानी शिर्षक र जम्मा आम्दानी. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("तरकारी:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.tarkari.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("अन्नवाली:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.aanabali.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("ठूला पशुवस्तु:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Column(
              children: [
                SideText(smalltext: "Bhaisi: ${group.baiseNo.toString()}",),
                SideText(smalltext: "Gai: ${group.gaiNo.toString()}",),
                SideText(smalltext: "Goru: ${group.goruNo.toString()}",),
                SideText(smalltext: "Aane: ${group.aanneNo.toString()}",),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("वाख्रा:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.bakhra.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("कुखुरा:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.kukhura.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("उद्योग/व्यापार:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.business.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("क):",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.ka.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("ख):",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.kha.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("ग):",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.ga.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("जागिर:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.jagir.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("पेन्सन:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.pension.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("अन्य:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.aane.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}