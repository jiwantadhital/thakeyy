import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/group_info/personal_details_controller.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/bottom_sheet.dart';
import 'package:thadri/pages/group_info/group_menu_list/personal_details/pbottom_sheet.dart';
import 'package:thadri/pages/text/text.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    var pageId=Get.parameters['pageId'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("व्यक्तिगत विवरण")),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<PersonalDetailsController>(builder: (personal){
                return personal.isLoaded?ListView.builder(
                  itemCount: personal.personalDetailsList.length,
                  itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: (){
               showModalBottomSheet(
                 isScrollControlled: true,
                 backgroundColor: Colors.transparent,
                 context: context, builder: (context){
                 return PDBottomSheet(pageId: index);
               });
              },
              child: Card(
                color: Colors.grey.shade300,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          personal.personalDetailsList[index].samhumaSadakcheName.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Text(
                            personal.personalDetailsList[index].id.toString(),
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

