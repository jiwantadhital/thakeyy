import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/gallery/photo_gallery_controller.dart';

class StudyIn extends StatelessWidget {
  const StudyIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
      child: GetBuilder<PhotoController>(builder: (photo){
        return photo.isLoaded?Card(
          child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: photo.photoList.length,
                itemBuilder: (BuildContext context, int index) { 
                  return GestureDetector(
                   onTap: () async{
                            await showDialog(
                                         context: context,
                                 builder: (_) => imageDialog('My Image', "https://wedothakre.com/public/uploads/images/photo/${photo.photoList[index].img.toString()}", context));
                   },
                    child: Container(
                      width: 160,
                      child: Stack(
                          children: [
                            Positioned(
                              child: Column(
                              children: 
                                [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                      image: DecorationImage(image: NetworkImage(
                                        "https://wedothakre.com/uploads/images/photo/${photo.photoList[index].img.toString()}",
                                        ),fit: BoxFit.cover),
                                    ),
                                       ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5),
                                    height: 45,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(photo.photoList[index].title.toString(),
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            ),
                          ],
                      )
                      ),
                  );
                }
              ),
        ):LinearProgressIndicator(color: Colors.blue.shade900,);
      },)
    );
  }
   Widget imageDialog(text, path, context) {
      return   Dialog(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$text',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   icon: Icon(Icons.close_rounded),
            //   color: Colors.redAccent,
            // ),
          ],
        ),
      ),
      Container(
        width: 220,
        height: 400,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);
}
}