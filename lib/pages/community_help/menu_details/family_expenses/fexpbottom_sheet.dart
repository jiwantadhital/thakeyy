import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/family_expenses_controller.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class FEXBottomSheet extends StatelessWidget {
   FEXBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<FamilyExpensesController>().familyexpensesList[pageId];
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
                 NormalInfo(bigtext: "सदस्य संख्या :",smalltext: group.samuhaName!.samuhaSadaksheSankha.toString(),),
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
            MainText(bigtext: "(खर्च शिर्षक र जम्मा खर्च) :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("खाद्यन्न: ",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.khadhanna.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("लत्ता कपडा : ",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.lattakapada.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("शिक्षा:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.sikxyaName!.education.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("औषधी उपचार:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.aausadi.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("माछा/मासु/अण्डा:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.masu.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("धुम्रपान/मध्यपान:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.dhumrapan.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("सिपमुलक कार्यक्रम:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.sipmulak.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("कृषि औजार:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.krishiaaujar.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("रासायनिक मल /विषाधी:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.rasayenikmal.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("पशु पन्छी उपचार:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.pashupanchi.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("चाडपर्व विषेश:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.chadparba.toString(),),
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
                SideText(smalltext: group.aanne.toString(),),
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