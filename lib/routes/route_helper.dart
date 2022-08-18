import 'package:get/get.dart';
import 'package:thadri/main.dart';
import 'package:thadri/pages/about_us/about_menu.dart';
import 'package:thadri/pages/apply/apply_page.dart';
import 'package:thadri/pages/buttom_bar.dart';
import 'package:thadri/pages/community_help/community_menu.dart';
import 'package:thadri/pages/community_help/menu_details/family_earnings/family_earning.dart';
import 'package:thadri/pages/community_help/menu_details/family_expenses/family_expenses.dart';
import 'package:thadri/pages/community_help/menu_details/focal_person/focal.dart';
import 'package:thadri/pages/community_help/menu_details/help_details/help_details.dart';
import 'package:thadri/pages/community_help/menu_details/social_group/social_group_work.dart';
import 'package:thadri/pages/group_info/group_menu.dart';
import 'package:thadri/pages/group_info/group_menu_list/family_details/family_details.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/group_details.dart';
import 'package:thadri/pages/group_info/group_menu_list/group_details/bottom_sheet.dart';
import 'package:thadri/pages/group_info/group_menu_list/personal_details/personal_details.dart';
import 'package:thadri/pages/group_info/group_menu_list/women_selfdependent/women_selfdependent.dart';
import 'package:thadri/pages/home_page.dart';
import 'package:thadri/pages/monthly_management/monthly_management_menu.dart';
import 'package:thadri/pages/monthly_management/monthly_menu/fund_management/fund_management.dart';
import 'package:thadri/pages/monthly_management/monthly_menu/fund_releated/fund_related.dart';
import 'package:thadri/pages/monthly_management/monthly_menu/monthly_meetings/monthly_meetings.dart';
import 'package:thadri/pages/recent/recent_details.dart';
import 'package:thadri/pages/splash_page.dart';
import 'package:thadri/pages/study_in/detail/study_in_detail.dart';
import 'package:thadri/pages/text/text.dart';

class RouteHelper{
  static const String splashPage="/splash-page";
  static const String initial = "/";
  static const String studyIn="/study_in";
  static const String blog="/blog";
  static const String apply="/apply";

//community
static const String communityMenu="/community-menu";
static String getcommunityMenu()=>'$communityMenu';
static const String familyEarnings="/family-earnings";
static String getfamilyEarnings()=>'$familyEarnings';
static const String familyExpenses="/family-expenses";
static String getfamilyExpenses()=>'$familyExpenses';
static const String socialGroupWork="/social-work";
static String getSocialGroupWork()=>'$socialGroupWork';
static const String helpDetails="/help-details";
static String getHelpDetails()=>'$helpDetails';
static const String focalPerson="/focal-person";
static String getFocalPerson()=>'$focalPerson';

//monthly management
static const String monthlyManagement="/monthly-management";
static String getMonthlyManagement()=>'$monthlyManagement';
static const String monthlyMeeting="/monthly-meeting";
static String getmonthlyMeeting()=>'$monthlyMeeting';
static const String fundReleated="/fund-releated";
static String getfundReleated()=>'$fundReleated';
static const String fundManagement="/fund-management";
static String getfundManagement()=>'$fundManagement';
static const String text="/text";
static String gettext()=>'$text';

//About Menu
static const String aboutMenu="/about-menu";
static String getAboutMenu()=>'$aboutMenu';


//Group Menu
static const String groupMenu="/group-menu";
static String getGroupMenu()=>'$groupMenu';
static const String groupDetails="/group-details";
static String getGroupDetails()=>'$groupDetails';
static const String womenSelfdependent="/women-selfDependent";
static String getWomenSelfDependent()=>'$womenSelfdependent';
static const String personalDetails="/personal-details";
static String getPersonalDetails()=>'$personalDetails';
static const String familyDetails="/family-details";
static String getFamilyDetails()=>'$familyDetails';
static const String bottomBar="/bottom-bar";
static String getbottomBar()=>'$bottomBar';



  static String getSplashPage()=>'$splashPage';
  static String getStudyIn(int pageId)=>'$studyIn?pageId=$pageId';
  static String getBlog(int pageId)=>'$blog?pageId=$pageId';
  static String getInitial()=>'$initial';

  static String getapply()=>'$apply';


  static List<GetPage> routes=[

    GetPage(name: splashPage, page: (){
      return SplashScreen();
    }),

    GetPage(name: initial, page: (){
      return HomePage();
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: studyIn, page: (){
      var pageId=Get.parameters['pageId'];
      return StudyInDetails(pageId: int.parse(pageId!),);
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: blog, page: (){
      var pageId=Get.parameters['pageId'];
      return RecentDetails(pageId: int.parse(pageId!),);
    },
    transition: Transition.circularReveal
    ),
   
   
    GetPage(name: apply, page: (){
      return ApplyPage();
    },
    transition: Transition.fadeIn
    ),

    //community
    GetPage(name: communityMenu, page: (){
      return CommunityMenu();
    },
    transition: Transition.fadeIn
    ),
     GetPage(name: familyEarnings, page: (){
      return FamilyEarnings();
    },
    transition: Transition.fadeIn
    ),
     GetPage(name: bottomBar, page: (){
      return BottomBar();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: familyExpenses, page: (){
      return FamilyExpenses();
    },
    transition: Transition.fadeIn
    ),
     GetPage(name: socialGroupWork, page: (){
      return SocialGroupWork();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: helpDetails, page: (){
      return HelpDetails();
    },
    transition: Transition.fadeIn
    ),
     GetPage(name: focalPerson, page: (){
      return FocalPerson();
    },
    transition: Transition.fadeIn
    ),

    //monthly management
       GetPage(name: monthlyManagement, page: (){
      return MonthlyManagementMenu();
    },
    transition: Transition.fadeIn
    ),
        GetPage(name: monthlyMeeting, page: (){
      return MonthlyMeeting();
    },
    transition: Transition.fadeIn
    ),
        GetPage(name: fundReleated, page: (){
      return FundReleated();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: fundManagement, page: (){
      return FundManagement();
    },
    transition: Transition.fadeIn
    ),

    //About Menu
      GetPage(name: aboutMenu, page: (){
      return AboutMenu();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: text, page: (){
      return HomePage();
    },
    transition: Transition.fadeIn
    ),
    

    //GroupMenu
      GetPage(name: groupMenu, page: (){
      return GroupMenu();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: groupDetails, page: (){
      return GroupDetails();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: personalDetails, page: (){
      return PersonalDetails();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: womenSelfdependent, page: (){
      return WomenSelfDependent();
    },
    transition: Transition.fadeIn
    ),
      GetPage(name: familyDetails, page: (){
      return FamilyDetails();
    },
    transition: Transition.fadeIn
    ),
  ];
}