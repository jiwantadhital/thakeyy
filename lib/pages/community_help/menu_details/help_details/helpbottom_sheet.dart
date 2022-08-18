import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/help_details_controller.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class HelpBottomSheet extends StatelessWidget {
   HelpBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<HelpDetailsController>().helpDetailsList[pageId];
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
                 NormalInfo(bigtext: "समुहको नाम :",smalltext: group.samuhaName!.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "सहभागी/लाभान्वीत संख्या. :",smalltext: group.sahabhagi.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "सहयोगी निकायको नाम :",smalltext: group.nikayekoNam.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "लाभान्वित परिवार :",smalltext: group.labhambigPariyar.toString(),),
                 SizedBox(height: 3,),
                 Align(
      alignment: Alignment.topLeft,
      child:Container(
        padding: EdgeInsets.only(left: 20,right: 10,top: 15,bottom: 15),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
         
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(bigtext: "तालिम/गोष्ठि/भ्रमण. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("देखि:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.talimDekhi.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("सम्म:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.talimSamma.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
          SizedBox(height:3),
                  Align(
      alignment: Alignment.topLeft,
      child:Container(
        padding: EdgeInsets.only(left: 20,right: 10,top: 15,bottom: 15),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
         
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(bigtext: "सहयोग विवरण. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("नगद:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.samayogNagat.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("जिन्सी:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.sahoyogJeans.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
      SizedBox(height: 3,),
                 NormalInfo(bigtext: "लक्षित समुह :",smalltext: group.lichitSamuha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "प्रगति/उपलब्धी:",smalltext: group.pragati.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifiyat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}