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
import 'package:thadri/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/data/repository/abroad_study_repo.dart';
import 'package:thadri/data/repository/blog_repo.dart';
import 'package:thadri/data/repository/college_repo.dart';
import 'package:thadri/data/repository/community_help/family_earning_repo.dart';
import 'package:thadri/data/repository/community_help/family_expenses_repo.dart';
import 'package:thadri/data/repository/community_help/focal_repo.dart';
import 'package:thadri/data/repository/community_help/help_details_repo.dart';
import 'package:thadri/data/repository/community_help/social_work_repo.dart';
import 'package:thadri/data/repository/gallery/photo_gallery_repo.dart';
import 'package:thadri/data/repository/gallery/video_gallery_repo.dart';
import 'package:thadri/data/repository/group_info/family_details_repo.dart';
import 'package:thadri/data/repository/group_info/group_details_repo.dart';
import 'package:thadri/data/repository/group_info/personal_details_repo.dart';
import 'package:thadri/data/repository/group_info/women_dependent_repo.dart';
import 'package:thadri/data/repository/intro_repo.dart';
import 'package:thadri/data/repository/monthly_management/fund_management_repo.dart';
import 'package:thadri/data/repository/monthly_management/fund_releated_repo.dart';
import 'package:thadri/data/repository/monthly_management/monthly_meetings_repo.dart';
import 'package:thadri/data/repository/service_repo.dart';
import 'package:thadri/data/repository/slider/slider_repo.dart';
import 'package:thadri/data/repository/staff/staff_repo.dart';
import 'package:thadri/data/repository/staff/stafftwo_repo.dart';
import 'package:thadri/data/repository/study_in_repo.dart';
import 'package:thadri/utils/app_constants.dart';

Future<void> init() async{

  //api-client
Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
Get.lazyPut(()=>ApiClient1(appBaseUrl1: AppConstants.MAIN_URL));

//repos
Get.lazyPut(() => StudyInRepo(apiClient: Get.find()));
Get.lazyPut(() => AbroadStudyRepo(apiClient: Get.find()));
Get.lazyPut(() => BlogRepo(apiClient1: Get.find()));
Get.lazyPut(() => ServiceRepo(apiClient: Get.find()));
Get.lazyPut(() => CollegeRepo(apiClient: Get.find()));
Get.lazyPut(() => FamilyEarningRepo(apiClient1: Get.find()));
Get.lazyPut(() => FamilyExpensesRepo(apiClient1: Get.find()));
Get.lazyPut(() => SocialWorkRepo(apiClient1: Get.find()));
Get.lazyPut(() => HelpDetailsRepo(apiClient1: Get.find()));
Get.lazyPut(() => MonthlyMeetingRepo(apiClient1: Get.find()));
Get.lazyPut(() => FundReleatedRepo(apiClient1: Get.find()));
Get.lazyPut(() => FundManagementRepo(apiClient1: Get.find()));
Get.lazyPut(() => GroupDetailsRepo(apiClient1: Get.find()));
Get.lazyPut(() => WomenDRepo(apiClient1: Get.find()));
Get.lazyPut(() => PersonalDetailsRepo(apiClient1: Get.find()));
Get.lazyPut(() => FamilyDetailsRepo(apiClient1: Get.find()));
Get.lazyPut(() => SliderRepo(apiClient1: Get.find()));
Get.lazyPut(() => PhotoRepo(apiClient1: Get.find()));
Get.lazyPut(() => StaffRepo(apiClient1: Get.find()));
Get.lazyPut(() => IntroRepo(apiClient1: Get.find()));
Get.lazyPut(() => VideoRepo(apiClient1: Get.find()));
Get.lazyPut(() => StaffTwoRepo(apiClient1: Get.find()));
Get.lazyPut(() => FocalRepo(apiClient1: Get.find()));


//controllers
Get.lazyPut(() => StudyInController(studyInRepo: Get.find()));
Get.lazyPut(() => AbroadStudyController(abroadStudyRepo: Get.find()));
Get.lazyPut(() => BlogController(blogRepo: Get.find()));
Get.lazyPut(() => ServiceController(serviceRepo: Get.find()));
Get.lazyPut(() => CollegeController(collegeRepo: Get.find()));
Get.lazyPut(() => FamilyEarningsController(familyearningRepo: Get.find()));
Get.lazyPut(() => FamilyExpensesController(familyexpensesRepo: Get.find()));
Get.lazyPut(() => SocialWorkController(socialWorkRepo: Get.find()));
Get.lazyPut(() => HelpDetailsController(helpDetailsRepo: Get.find()));
Get.lazyPut(() => MonthlyMeetingsController(monthlyMeetingRepo: Get.find()));
Get.lazyPut(() => FundReleatedController(fundReleatedRepo: Get.find()));
Get.lazyPut(() => FundManagementController(fundManagementRepo: Get.find()));
Get.lazyPut(() => GroupDetailsController(groupDetailsRepo: Get.find()));
Get.lazyPut(() => WomenDController(womenDRepo: Get.find()));
Get.lazyPut(() => PersonalDetailsController(personalDetailsRepo: Get.find()));
Get.lazyPut(() => FamilyDetailsController(familyDetailsRepo: Get.find()));
Get.lazyPut(() => SliderController(sliderRepo: Get.find()));
Get.lazyPut(() => PhotoController(photoRepo: Get.find()));
Get.lazyPut(() => StaffController(staffRepo: Get.find()));
Get.lazyPut(() => IntroController(introRepo: Get.find()));
Get.lazyPut(() => VideoController(videoRepo: Get.find()));
Get.lazyPut(() => StaffTwoController(stafftwoRepo: Get.find()));
Get.lazyPut(() => FocalController(focalRepo: Get.find()));
}