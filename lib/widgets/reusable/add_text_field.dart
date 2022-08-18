import 'package:flutter/material.dart';

class AddTextField extends StatelessWidget {
 final TextEditingController textController;
final String hintText;
final IconData icon;
int? lines;
final String? Function(String?)? validator;
Color? myColor;


AddTextField({required this.textController,required this.hintText,required this.icon,this.lines,this.validator,this.myColor});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1,10),
                  color: Colors.grey.withOpacity(0.2),
                )
              ],
            ),
            child: TextFormField(
              validator: validator,
              maxLines: lines,
              controller: textController,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: myColor,
                ),
                prefixIcon: Icon(icon,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 10,
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 10,
                    color: Colors.white,
                  ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 10,
                    color: Colors.white,
                  ),
            ),
          ),
          ),
          );
  }
}