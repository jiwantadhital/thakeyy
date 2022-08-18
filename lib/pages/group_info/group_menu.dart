import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class GroupMenu extends StatelessWidget {
  const GroupMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("समुह विवरण ")),backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Card(
              child: Column(
                children: [
                   Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteHelper.getGroupDetails());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "समुहको विवरण",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteHelper.getWomenSelfDependent());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "समुह सम्पर्क व्यक्तिहरु",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteHelper.getPersonalDetails());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "व्यक्तिगत विवरण",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
               
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteHelper.getFamilyDetails());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "पारिवारिक विवरण",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}