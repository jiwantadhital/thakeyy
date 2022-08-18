import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/gallery/photo_gallery_controller.dart';

class PhotoGallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<PhotoController>(builder: (photo){
        return photo.isLoaded? GridView.builder(
          physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                ),
            itemCount: photo.photoList.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: GestureDetector(
                        onTap: (){
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Positioned(
                                    child: GestureDetector(
                                         onTap: () async {
                                       await showDialog(
                                         context: context,
                                 builder: (_) => imageDialog('My Image', "https://wedothakre.com/public/uploads/images/photo/${photo.photoList[index].img.toString()}", context));
                                       },
                                      child: Container(
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                          image: DecorationImage(image:NetworkImage(
                                            "https://wedothakre.com/uploads/images/photo/${photo.photoList[index].img.toString()}",
                                          ),
                                          fit: BoxFit.cover
                                          ),
                                        ),
                                      ),
                                    ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5,bottom: 3),
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                        ),
                                        margin: EdgeInsets.only(top: 170),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 4,),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 350,
                                                  child: 
                                                  Center(
                                                    child: Text(
                                                    photo.photoList[index].title.toString(),
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    style: TextStyle(
                                                    color: Colors.blue.shade900,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                      ),
                                                          ),
                                                  ),
                                                ),
                                                   ],
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                    }):Center(child: LinearProgressIndicator());
            }),
      ),
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
            //     // Navigator.of(context).pop();
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