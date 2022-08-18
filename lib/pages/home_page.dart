import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:thadri/controllers/abroad_study_controller.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/controllers/college_controller.dart';
import 'package:thadri/controllers/community_help/family_earnings_controller.dart';
import 'package:thadri/controllers/community_help/family_expenses_controller.dart';
import 'package:thadri/controllers/community_help/focal_controller.dart';
import 'package:thadri/controllers/community_help/help_details_controller.dart';
import 'package:thadri/controllers/community_help/social_work_controller.dart';
import 'package:thadri/controllers/gallery/photo_gallery_controller.dart';
import 'package:thadri/controllers/gallery/video_gallery_controller.dart';
import 'package:thadri/controllers/group_info/family_detail_controller.dart';
import 'package:thadri/controllers/group_info/group_details_controller.dart';
import 'package:thadri/controllers/group_info/personal_details_controller.dart';
import 'package:thadri/controllers/group_info/women_independent_controller.dart';
import 'package:thadri/controllers/intro_controller.dart';
import 'package:thadri/controllers/monthly_management/fund_management_controller.dart';
import 'package:thadri/controllers/monthly_management/fund_releated_controller.dart';
import 'package:thadri/controllers/monthly_management/monthly_meetings_controller.dart';
import 'package:thadri/controllers/phone/phone_controller.dart';
import 'package:thadri/controllers/services_controller.dart';
import 'package:thadri/controllers/slider/slider_controller.dart';
import 'package:thadri/controllers/staff/staff_controller.dart';
import 'package:thadri/controllers/staff/stafftwo_controller.dart';
import 'package:thadri/controllers/study_in_controllers.dart';
import 'package:thadri/pages/carousel/sliderPage.dart';
import 'package:thadri/pages/recent/recent_post.dart';
import 'package:thadri/pages/study_in/study_in.dart';
import 'package:thadri/widgets/drawer/drawer_items.dart';
import 'package:get/get.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   

  late Future<PhoneModel> futurePhone;
   final number = ' 9851011682';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   @override
  void initState() {
    super.initState();
    futurePhone = fetchButton();
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: 200,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Container(
              child: Drawer(
              child:DrawerWidget(
              ),
              ),
            ),
          ),
        ),
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          children: 
              [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage("assets/images/myg.png"),
                    ),
                     border: Border.all(width: 1,color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade900,
                          blurRadius: 8,
                          offset: Offset(0,-1),
                        )
                      ]
                  ),
                  padding: EdgeInsets.only(left: 0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: double.maxFinite,
                    width: 60,
                    decoration: BoxDecoration(
                       color: Colors.blue.shade900,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      border: Border.all(width: 1,color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade900,
                          blurRadius: 6,
                          offset: Offset(0,-1),
                        )
                      ]
                    ),
                    child: GestureDetector(
                      onTap: (){
                         _scaffoldKey.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.list_outlined,
                        color:  Colors.white,
                        ),
                    ),
                  ),  
                ],
              ),
              ),  
              Expanded(
                child: Container(
                  color: Color.fromARGB(31, 158, 157, 157).withOpacity(0.1),
                  child: RefreshIndicator(
                    onRefresh: () async{
              await Get.find<StudyInController>().getStudyInList();
              Get.find<AbroadStudyController>().getabroadStudyList();
    Get.find<BlogController>().getblogList();
    Get.find<StaffTwoController>().getstafftwoList();
    Get.find<StaffController>().getstaffList();
        Get.find<ServiceController>().getserviceList();
        Get.find<CollegeController>().getcollegeList();
        Get.find<SliderController>().getsliderList();
        Get.find<FamilyEarningsController>().getfamilyearningList();
        Get.find<FamilyExpensesController>().getfamilyexpensesList();
        Get.find<SocialWorkController>().getsocialWorkList();
        Get.find<HelpDetailsController>().gethelpdetailsList();
        Get.find<MonthlyMeetingsController>().getmonthlyMeetingList();
        Get.find<FundReleatedController>().getfundReleatedList();
        Get.find<FundManagementController>().getfundManagementList();
        Get.find<GroupDetailsController>().getgroupDetailsList();
        Get.find<PersonalDetailsController>().getpersonalDetailsList();
        Get.find<WomenDController>().getwomenDList();
        Get.find<FamilyDetailsController>().getfamilyDetailsList();
        Get.find<IntroController>().getintroList();
        Get.find<PhotoController>().getphotoList();
        Get.find<VideoController>().getvideoList();
        Get.find<FocalController>().getfocalList();
            },
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SliderPage(),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: 60,
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(left: 10,right: 10),
                                    decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                    ),
                                    child: Center(child: BigText(text:"गाउँपालिका परिचय",color: Colors.white,)),
                                  ),
                                  Intro(),
                                  SizedBox(height: 3,),
                                  Row(
                    children: 
                      const [
                         Expanded(
                           child: Divider(
                                           color: Colors.black,
                                         ),
                         ),
                         SizedBox(width: 5,),
                        Text("फोटो ग्यालेरी",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(width: 5,),
                        Expanded(
                           child: Divider(
                             color: Colors.black,
                                         ),
                         ),
                    ],
                                  ),
                                  Column(
                                    children: [
                    StudyIn(),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                    children: 
                      const [
                         Expanded(
                           child: Divider(
                                           color: Colors.black,
                                         ),
                         ),
                         SizedBox(width: 5,),
                        Text("सुर्चना तथा जानकारी",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(width: 5,),
                        Expanded(
                           child: Divider(
                                           color: Colors.black,
                                         ),
                         ),
                    ],
                                  ),
                                  RecentPage(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ],
        ),
        floatingActionButton: 
        FutureBuilder<PhoneModel>(
          future: futurePhone,
            builder: (context, snapshot) {
        return FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: Colors.blue.shade900,
              onPressed: (){
                setState(() {
                  if (snapshot.hasData) {
                launch('tel://${snapshot.data!.phone}');
                  }else{
                   launch('tel://$number');
                   
                   }
                                  },);              },
              child: RichText(text: TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.phone),),
                
                ]
              ),
              ),
            );
            }
          ),
        ),
    );
      
    
  }
}

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(builder: (intro){
      return intro.isLoaded?
       Container(
        height: 220,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: intro.introList.length,
          itemBuilder: ((context, index) {
          return Container(
        margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
        ),
        child: Text(
         intro.introList[index].desc!,
          maxLines: 9,overflow: TextOverflow.ellipsis,),
    );
        })),
      ):Container(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child:  Container(
        margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
        ),
        child: Image.asset("assets/images/load.png",color: Colors.white.withOpacity(0.4)),
        )
        
      );
    
    });
  }
  
}