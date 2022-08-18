import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class AboutMenu extends StatelessWidget {
  const AboutMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("हाम्रा बारेमा ")),backgroundColor: Colors.blue.shade900,
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
                        Get.toNamed(RouteHelper.getmonthlyMeeting());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "वडा कार्यालयहरु",color: Colors.white,),
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
                        Get.toNamed(RouteHelper.getfundReleated());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "संगठन मिसन",color: Colors.white,),
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
                        Get.toNamed(RouteHelper.getfundManagement());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "संगठन संरचना",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
               
                  SizedBox(height: 10,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}