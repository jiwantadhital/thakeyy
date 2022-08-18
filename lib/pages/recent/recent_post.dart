import 'package:flutter/material.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:thadri/widgets/texts/small_text.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';



class RecentPage extends StatelessWidget {
  const RecentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogController>(builder: (blog){
      return blog.isLoaded?MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                      shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: blog.blogList.length,
                        itemBuilder: (context,index){
                              var date = blog.blogList[index].createdAt.toString().substring(0,10);
                          return Container(
                            margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            child: GestureDetector(
                               onTap: () {
                                 Get.toNamed(RouteHelper.getBlog(index));
                                  },
                              child: Row(
                                children: 
                                  [
                    Container(
                      height: 135,
                      width: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://wedothakre.com/public/uploads/file/news/${blog.blogList[index].file.toString()}"
                          ),
                          ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 115,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text:blog.blogList[index].title.toString(),color: Colors.black,),
                              const SizedBox(height: 5,),
                              SmallText(text:blog.blogList[index].newsDesc.toString(),color: Colors.black26,),
                              const SizedBox(height: 10,),
                              Row(
                    children: [
                       SmallText(text: date
                       ,color: Colors.black38,),
                     
                    ],
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                                ],
                              ),
                            ),
                          );
                      }),
                  ): Center(child: Container(
                    height: 50,
                    width: 100,
                    child: const LoadingIndicator(
                    indicatorType: Indicator.ballPulse, 
                      colors: [Colors.blue],   
                      strokeWidth: 4,     
                     
),
                  ));
    });
  }
}