import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/monthly_management/monthly_meetings_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class GDBottomSheet extends StatelessWidget {
   GDBottomSheet({required this.pageId});
int pageId;
  @override
 Widget build(BuildContext context) {
    var group= Get.find<GroupDetailsController>().groupDetailsList[pageId];
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
                 NormalInfo(bigtext: "वडा नं. :",smalltext: group.wardNo.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुहको नाम. :",smalltext: group.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "टोल :",smalltext: group.tol.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुह सदस्य संख्या :",smalltext: group.samuhaSadaksheSankha.toString(),),
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
            MainText(bigtext: "समुह पदाधिकारीहरुको नाम र सम्पर्क नं. :",size: 20,weight: FontWeight.bold,),
            SizedBox(height: 10,),
            Text("अध्यक्ष:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.aadakcheName.toString(),),
                SideText(smalltext: group.aadakchePhone.toString(),),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("सचिव:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.sachibName.toString(),),
                SideText(smalltext: group.sachibPhone.toString(),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              color: Colors.black12,
              height: 2,
            ),
            SizedBox(height: 5,),
            Text("कोषाध्यक्ष:",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideText(smalltext: group.kosadakcheName.toString(),),
                SideText(smalltext: group.kosadakchePhone.toString(),),
              ],
            ),
          
          ],
        ),
      ),
    ),
      SizedBox(height: 3,),
                 NormalInfo(bigtext: "नियमित बैठक :",smalltext: group.niyemitBaithak.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "वचत दर:",smalltext: group.bachatDar.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "व्याजको प्रतिशत :",smalltext: group.baajPratisad.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifiyat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}