import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/group_info/women_independent_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class WDBottomSheet extends StatelessWidget {
   WDBottomSheet({required this.pageId});
int pageId;
  @override
  Widget build(BuildContext context) {
    var group= Get.find<WomenDController>().womenDList[pageId];
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
                 NormalInfo(bigtext: "समुहको नाम. :",smalltext: group.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "टोल :",smalltext: group.samuhaName!.tol.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुह सदस्य संख्या :",smalltext: group.samuhaName!.samuhaSadaksheSankha.toString(),),
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
            MainText(bigtext: "आत्मनिर्भर समूहको सम्पर्क व्यक्तिको विवरण. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("कृषि:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.krishiName.toString(),),
                SideText(smalltext: group.krishiPhone.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("पशुपालन:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.pashupalanName.toString(),),
                SideText(smalltext: group.pashupalanPhone.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("शिक्षा र खेलकुद:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.sikaKhelkudName.toString(),),
                SideText(smalltext: group.sikaKhelkudPhone.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("खानेपानी, स्वास्थ्य र पोषण:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.khaSuswaPosandName.toString(),),
                SideText(smalltext: group.khaSuswaPosandPhone.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("विपद्, वातावरण र सरसफाई:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.bipadBataSarName.toString(),),
                SideText(smalltext: group.bipadBataSarPhone.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
      SizedBox(height: 3,),
                                  NormalInfo(bigtext: "कैफियत :",smalltext: group.samuhaName!.kaifiyat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}