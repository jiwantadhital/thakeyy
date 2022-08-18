import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
import 'package:thadri/routes/route_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'helper/dependencies.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        return GetBuilder<SliderController>(builder: (_){
    return GetBuilder<AbroadStudyController>(builder: (_){
    return GetBuilder<StudyInController>(builder: (_){
      return GetBuilder<BlogController>(builder: (_){
        return GetBuilder<IntroController>(builder: (_){
      return GetBuilder<ServiceController>(builder: (_){
        return GetBuilder<CollegeController>(builder: (_){
         return GetBuilder<FamilyEarningsController>(builder: (_){
           return GetBuilder<FamilyExpensesController>(builder: (_){
           return GetBuilder<SocialWorkController>(builder: (_){
             return GetBuilder<HelpDetailsController>(builder: (_){
               return GetBuilder<MonthlyMeetingsController>(builder: (_){
                 return GetBuilder<FundReleatedController>(builder: (_){
                    return GetBuilder<FundManagementController>(builder: (_){
                      return GetBuilder<GroupDetailsController>(builder: (_){
                         return GetBuilder<WomenDController>(builder: (_){
                           return GetBuilder<PersonalDetailsController>(builder: (_){
                             return GetBuilder<FamilyDetailsController>(builder: (_){
                              return GetBuilder<PhotoController>(builder: (_){
                                return GetBuilder<StaffController>(builder: (_){
                                  return GetBuilder<StaffTwoController>(builder: (_){
                                  return GetBuilder<VideoController>(builder: (_){
                                    return GetBuilder<FocalController>(builder: (_){
            return ConnectionNotifier(
           child:  GetMaterialApp(
      builder:(context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Thakrey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
    )
            );
         });
        });
      });
    });
  });
    });
    });
    });
    });
    });
    });
    });
    });
    });
    });
    });
     });
        });
        });
         });
          });
          });
          });
  }
}

//  debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),

