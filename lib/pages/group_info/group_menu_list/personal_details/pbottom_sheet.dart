import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/group_info/personal_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class PDBottomSheet extends StatelessWidget {
   PDBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<PersonalDetailsController>().personalDetailsList[pageId];
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
                 NormalInfo(bigtext: "वडा नं. :",smalltext: group.samuhaName!.wardNo.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुहको नाम. :",smalltext: group.samuhaName!.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "टोल :",smalltext: group.samuhaName!.tol.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुह सदस्य नाम :",smalltext: group.samhumaSadakcheName.toString(),),
                 SizedBox(height: 3,),
      SizedBox(height: 3,),
                 NormalInfo(bigtext: "परिवार संख्या :",smalltext: group.pariwarSankya.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "शिक्षा : ",smalltext: group.sikxyaName!.education.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जन्म मिति :",smalltext: group.janmaMiti.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "नागरिकता नं. :",smalltext: group.nagritaNum.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जाती :",smalltext: group.jatiName!.caste.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "धर्म :",smalltext: group.dharmaName!.religion.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "पेशा/व्यवसाय :",smalltext: group.peshaName!.occupation.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "जग्गा जमिन (क्षेत्रफल) :",smalltext: group.jagga.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "	पशुवस्तु :",smalltext: group.pashuName!.animal.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "आर्थिक अवस्था (क-घ) :",smalltext: group.aarthikName!.finanancialStatus.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}