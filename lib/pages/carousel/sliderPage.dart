import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/slider/slider_controller.dart';


class SliderPage extends StatelessWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderController>(builder: (slider){
         try{
          return slider.isLoaded? CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16/8,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.easeIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
              ),
          itemCount: slider.sliderList.length,
          itemBuilder: (BuildContext context,int index, int pageViewIndex) =>
           Container(
            margin: EdgeInsets.only(top: 10),
             height: 160,
             width: double.maxFinite,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://wedothakre.com/uploads/images/slider/${slider.sliderList[index].img.toString()}",
                  ),
                  fit: BoxFit.cover
                  ),
             ),

             ),
          ):CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16/8,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.easeIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
              ),
          itemCount: 2,
          itemBuilder: (BuildContext context,int index, int pageViewIndex) =>
           Container(
            margin: EdgeInsets.only(top: 10),
             height: 160,
             width: double.maxFinite,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/thadrislide1.jpg",
                  ),
                  fit: BoxFit.cover
                  ),
             ),

             ),
          );
         }
         catch(e){
          return LinearProgressIndicator();
         }
  });
  }
}