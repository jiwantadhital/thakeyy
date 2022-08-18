import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
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
import 'package:thadri/controllers/services_controller.dart';
import 'package:thadri/controllers/slider/slider_controller.dart';
import 'package:thadri/controllers/staff/staff_controller.dart';
import 'package:thadri/controllers/staff/stafftwo_controller.dart';
import 'package:thadri/controllers/study_in_controllers.dart';
import 'package:thadri/pages/employee/employees.dart';
import 'package:thadri/pages/gallery/gallery_main.dart';
import 'package:thadri/pages/gallery/video_gallery.dart';
import 'package:thadri/pages/home_page.dart';
import 'package:thadri/pages/recent/news_pages.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   int _selectedIndex =0;
   
  List pages=[
    const HomePage(),
     const GalleryPage(),
    const NewsPage(),
    const EmployeePage(),

  ];
  
  
  void onTapNav(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ConnectionNotifierToggler(
      connected: Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.red,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.photo_sharp),
          label: "ग्यालेरी",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "सुचना",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "कर्मचारी विवरण",
          ),
        ],
      ),
    ),
       disconnected: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: const Icon(Icons.signal_wifi_connected_no_internet_4_rounded,size: 80,color: Colors.red,)),
            BigText(text: "NO INTERNET",color: Colors.black,)
          ],
        ),
       ),
       onConnectionStatusChanged: (connected){
        if(connected == null) return;
             Get.find<StudyInController>().getStudyInList();
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
     
       );
  }
}