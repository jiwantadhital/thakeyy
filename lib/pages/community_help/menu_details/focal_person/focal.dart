import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/focal_controller.dart';
import 'package:thadri/controllers/community_help/social_work_controller.dart';
import 'package:thadri/pages/community_help/menu_details/focal_person/focal_bottom.dart';
import 'package:thadri/pages/community_help/menu_details/social_group/socialbottom_sheet.dart';
import 'package:thadri/pages/text/text.dart';

class FocalPerson extends StatefulWidget {
  const FocalPerson({Key? key}) : super(key: key);

  @override
  State<FocalPerson> createState() => _FocalPersonState();
}

class _FocalPersonState extends State<FocalPerson> {
  @override
  Widget build(BuildContext context) {
    var pageId=Get.parameters['pageId'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("सम्पर्क व्यक्तिका कार्यहरु")),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<FocalController>(builder: (social){
                return social.isLoaded?ListView.builder(
                  itemCount: social.focalList.length,
                  itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: (){
               showModalBottomSheet(
                 isScrollControlled: true,
                 backgroundColor: Colors.transparent,
                 context: context, builder: (context){
                 return FocalBottomSheet(pageId: index);
               });
              },
              child: Card(
                color: Colors.grey.shade300,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          social.focalList[index].samuhaName!.samuhakoName.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Text(
                            social.focalList[index].id.toString(),
                            style:
                                TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_downward_outlined),
                      ),
                    ),
                  ),
            );
                }
                ):Center(child: CircularProgressIndicator(color: Colors.blue.shade900,));
          }
          
          ),
        ),
      ),
    );
  }
}

class NormalInfo extends StatelessWidget {
  NormalInfo({required this.bigtext,required this.smalltext});
 String bigtext;
 String smalltext;
 

  @override
  Widget build(BuildContext context) {
    return Align(
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
            MainText(bigtext: bigtext,size: 20,weight: FontWeight.bold,),
            SideText(smalltext: smalltext,size: 15,weight: FontWeight.w400,),
          ],
        ),
      ),
    );
  }
}

