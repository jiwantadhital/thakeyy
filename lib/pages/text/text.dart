import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  MainText({this.size,this.weight,this.bigtext});
  double? size;
  FontWeight? weight;
  String? bigtext;

  @override
  Widget build(BuildContext context) {
    return Text(
      bigtext!,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: Colors.blue.shade900,
      ),
    );
  }
}

class SideText extends StatelessWidget {
  SideText({this.size,this.weight,this.smalltext});
  double? size;
  FontWeight? weight;
  String? smalltext;

  @override
  Widget build(BuildContext context) {
    return Text(
      smalltext!,
      maxLines: 3,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: Colors.black,
      ),
    );
  }
}