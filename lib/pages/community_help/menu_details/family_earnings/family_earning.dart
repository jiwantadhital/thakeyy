import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/community_help/family_earnings_controller.dart';
import 'package:thadri/pages/community_help/menu_details/family_earnings/fexbottom_sheet.dart';
import 'package:thadri/pages/text/text.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class FamilyEarnings extends StatefulWidget {
  const FamilyEarnings({Key? key}) : super(key: key);

  @override
  State<FamilyEarnings> createState() => _FamilyEarningsState();
}

class _FamilyEarningsState extends State<FamilyEarnings> {
  @override
  Widget build(BuildContext context) {
    var pageId=Get.parameters['pageId'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("आम्दानी तथा खर्च")),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<FamilyEarningsController>(builder: (familyEarnings){
                return familyEarnings.isLoaded?ListView.builder(
                  itemCount: familyEarnings.familyearningList.length,
                  itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: (){
               showModalBottomSheet(
                 isScrollControlled: true,
                 backgroundColor: Colors.transparent,
                 context: context, builder: (context){
                 return FEBottomSheet(pageId: index);
               });
              },
              child: Card(
                color: Colors.grey.shade300,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                         CircleAvatar(
                           child: Text(familyEarnings.familyearningList[index].id.toString()),
                         ),
                         SizedBox(width: 30,),
                         Container(
                           width: 200,
                           child: Column(
                             children: [
                               BigText(text: familyEarnings.familyearningList[index].samuhaName!.samuhakoName.toString(),color: Colors.black,),
                               SizedBox(height: 10,),
                               Text("सदस्य संख्या : ${familyEarnings.familyearningList[index].samuhaName!.samuhaSadaksheSankha} "),
                             ],
                           ),
                         ),
                         SizedBox(width: 60,),
                         Column(
                           children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_double_arrow_down_sharp,
                             semanticLabel: "See More",
                             color: Colors.blue.shade900,
                             ),),
                             Text("See More"),
                           ],
                         )
                        ],
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

