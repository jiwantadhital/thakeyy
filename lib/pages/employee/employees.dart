import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:thadri/controllers/staff/staff_controller.dart';
import 'package:thadri/controllers/staff/stafftwo_controller.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({ Key? key }) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  
        length: 2,  
        child: Scaffold(  
          appBar: AppBar(  
            backgroundColor: Colors.blue.shade900,
            title: const Text('कर्मचारी विवरण '),  
            centerTitle: true,
            bottom: const TabBar(  
              tabs: [  
                 Tab(icon: Icon(Icons.person), text: "परियोजना"),  
                 Tab(icon: Icon(Icons.person), text: "परियोजना अनुगमन समिति"),
              ],  
            ),  
          ),  
          body: const TabBarView(  
            children: [  
               TheTabs(),
              TheTabs2(),
            ],  
          )
        ),  
      );
  }
}

class TheTabs extends StatelessWidget {
  const TheTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              GetBuilder<StaffController>(builder: (staff){
                return staff.isLoaded? ListView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: staff.staffList.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: GestureDetector(
                         onTap: () {
                  
                          },
                        child: Row(
                          children: 
                            [
                         Expanded(
                          child: Card(
                          color: Colors.grey.shade300,
                           child: Padding(
                           padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: staff.staffList[index].name.toString(),color: Colors.black,),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                    width: 120,
                    child: BigText(text: staff.staffList[index].post.toString(),color: Colors.black45,size: 14,)),
                 const SizedBox(width: 5,),
                 Container(
                  width: 120,
                  child: BigText(text: staff.staffList[index].phone.toString(),color: Colors.black45,size: 14)),
              ],
               ),
               const SizedBox(height: 6,),
              BigText(text: staff.staffList[index].email.toString(),color: Colors.black45,size: 15),
    
                      ],
                    ),
                  ),
                ),
              ),
                Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight:  Radius.circular(20)),
                  color: Colors.blueGrey.withOpacity(0.4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.wedothakre.com/uploads/images/staff/${staff.staffList[index].image.toString()}",
                    ),
                    ),
                ),
              ),
                          ],
                        ),
                      ),
                    );
                }
                ):Center(child: Container(
                height: 50,
                width: 100,
                child: const LoadingIndicator(
                indicatorType: Indicator.ballPulse, 
                  colors: [Colors.blue],   
                  strokeWidth: 4,     
                 
),
                ));
              },
              ),
            ],
          ),
        ),
      );
  }
}

class TheTabs2 extends StatelessWidget {
  const TheTabs2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              GetBuilder<StaffTwoController>(builder: (staff){
                return staff.isLoaded? ListView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: staff.stafftwoList.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: GestureDetector(
                         onTap: () {
                  
                          },
                        child: Row(
                          children: 
                            [
                         Expanded(
                          child: Card(
                          color: Colors.grey.shade300,
                           child: Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: staff.stafftwoList[index].name.toString(),color: Colors.black,),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                    width: 120,
                    child: BigText(text: staff.stafftwoList[index].post.toString(),color: Colors.black45,size: 14,)),
                 const SizedBox(width: 5,),
                 Container(
                  width: 120,
                  child: BigText(text: staff.stafftwoList[index].phone.toString(),color: Colors.black45,size: 14)),
              ],
               ),
               const SizedBox(height: 6,),
              BigText(text: staff.stafftwoList[index].email.toString(),color: Colors.black45,size: 15),
    
                      ],
                    ),
                  ),
                ),
              ),
                Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: const Radius.circular(20),bottomRight: const Radius.circular(20)),
                  color: Colors.blueGrey.withOpacity(0.4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.wedothakre.com/uploads/images/staff/${staff.stafftwoList[index].image.toString()}",
                    ),
                    ),
                ),
              ),
                          ],
                        ),
                      ),
                    );
                }
                ):Center(child: Container(
                height: 50,
                width: 100,
                child: const LoadingIndicator(
                indicatorType: Indicator.ballPulse, 
                  colors: [Colors.blue],   
                  strokeWidth: 4,     
                 
),
                ));
              },
              ),
            ],
          ),
        ),
      );
  }
}