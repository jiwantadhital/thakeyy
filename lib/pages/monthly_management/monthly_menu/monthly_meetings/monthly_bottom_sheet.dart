import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/monthly_management/monthly_meetings_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/text/text.dart';

class MonthlyBottomSheet extends StatelessWidget {
   MonthlyBottomSheet({required this.pageId});
int pageId;
  @override
 Widget build(BuildContext context) {
    var group= Get.find<MonthlyMeetingsController>().monthlyMeetingList[pageId];
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
                 NormalInfo(bigtext: "वडा नं. :",smalltext: group.samuhaName!.wardNo.toString()),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुहको नाम. :",smalltext: group.samuhaName!.samuhakoName.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "टोल :",smalltext: group.samuhaName!.tol.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "समुह संख्या :",smalltext: group.samuhaName!.samuhaSadaksheSankha.toString(),),
                 SizedBox(height: 3,),
                  SizedBox(height: 3,),
                 NormalInfo(bigtext: "वैठकमा उपस्थिति संख्या :",smalltext: group.upasthitSankha.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "वैठक नं.:",smalltext: group.baithakNo.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "वैठक मिति :",smalltext: group.baithakMiti.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "बैठकका प्रस्तावहरु:",smalltext: group.prasthab.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "बैठकका निर्णयहरु :",smalltext: group.nidaye.toString(),),
                 SizedBox(height: 3,),
                 NormalInfo(bigtext: "कैफियत :",smalltext: group.kaifayat.toString(),),
                 ],
               ),
             ),
           ),
          );
  }
}