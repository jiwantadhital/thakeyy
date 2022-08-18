import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thadri/pages/recent/recent_post.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("सुर्चना तथा जानकारी")),backgroundColor: Colors.blue.shade900,),
    body: Column(children:
     [
       SizedBox(height: 20,),
       RecentPage(),
       ]
       ),
    );
  }
}