import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:thadri/pages/apply/api.dart';
import 'package:thadri/pages/apply/show_custom_snackbar.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/reusable/add_text_field.dart';
import 'package:get/get.dart';



class ApplyPage extends StatefulWidget {
  const ApplyPage({ Key? key }) : super(key: key);

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
 late  Color color;
 late String submit;
 late Color hintColor;
 final _formKey = GlobalKey<FormState>();
  bool value = false;
   var emailController=TextEditingController();
    var nameController=TextEditingController();
    var nationalController=TextEditingController();
    var officeController=TextEditingController();
    var titleController = TextEditingController();
    var descController = TextEditingController();

    @override
  void initState() {
    super.initState();
     color = Colors.blue.shade900.withOpacity(0.8);
    submit = "Submit";
    hintColor= Colors.blue.shade900;
  }

 
  @override
  Widget build(BuildContext context) {
    String nameTxst = "नाम थर: ";

    _apply()async{
      var data = {
        'name' : nameController.text,
        'email' : emailController.text,
        'national_id' : nationalController.text,
        'complain_office' : officeController.text,
        'complain_title' : titleController.text,
        'complain_desc' : descController.text,
      
      };
      try{
      var res = await CallApi().postData(data, 'submit');
      var body = jsonDecode(res.body);
      if(body['success']){
        Get.snackbar("धन्यवाद!! ", "हामी तपाईंलाई सकेसम्म चाँडो सम्पर्क गर्नेछौं ।",backgroundColor: Colors.green,colorText: Colors.white,);
        Get.toNamed(RouteHelper.getbottomBar());
      }
      
      else{
        print('error');
      }
    }
    catch(e){
      setState(() {
        color = Colors.red;
      });
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('कुनै पनि क्षेत्र खाली नछोड्नुहोस्'),backgroundColor: Colors.red,),
      );
    }
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("गुनासो/सुझाव फाराम",style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                  AddTextField(textController: nameController, hintText: "नाम थर: ",icon: Icons.person,myColor: hintColor,
                  validator: (value) {
               if (value == null || value.isEmpty) {
               hintColor=Colors.red;
              }
              return null;
                },
                  ),
                SizedBox(height: 20,),
                AddTextField(textController: nationalController, hintText: "नागरिकता नं / सामाजिक सुरक्षा परिचयपत्र नं./ घटना दर्ता नं: *",icon: Icons.perm_identity,myColor: hintColor,
                validator: (value) {
               if (value == null || value.isEmpty || value != int) {
               hintColor=Colors.red;
              }
              return null;
                },),
                SizedBox(height: 20,),
                AddTextField(textController: emailController, hintText: "इमेल: *",icon: Icons.email,myColor: hintColor,
                validator: (value) {
               if (value == null || value.isEmpty) {
               hintColor=Colors.red;
              }
              return null;
                },),
                SizedBox(height: 20,),
                AddTextField(textController: officeController, hintText: "गुनासो गर्नुपर्ने कार्यालय (जिल्ला, गाउँपालिका/नगरपालिका, वडा नं. ): *",icon: Icons.place,myColor: hintColor,
                validator: (value) {
               if (value == null || value.isEmpty) {
               hintColor=Colors.red;
              }
              return null;
                },),
                SizedBox(height: 20,),
                AddTextField(textController: titleController, hintText: "गुनासोको प्रकार: *",icon: Icons.type_specimen,myColor: hintColor,
                validator: (value) {
               if (value == null || value.isEmpty) {
               hintColor=Colors.red;
              }
              return null;
                },),
                  SizedBox(height: 20,),
                 AddTextField(textController: descController, hintText: "गुनासो समबन्धि विस्तृत विवरण: *",icon: Icons.description,lines: 5,myColor: hintColor,
                 validator: (value) {
               if (value == null || value.isEmpty) {
               hintColor=Colors.red;
              }
              return null;
                },),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    _formKey.currentState!.validate();
                    _apply();
                    setState(() {
                      submit = ".........";
                       Future.delayed(
                const Duration(seconds: 2),
                () {
                  if (this.mounted) {
            setState(() {
              submit = "Submit";
              color = Colors.blue.shade900;
              hintColor= Colors.blue.shade900;
            });
                  }
                },
              );
                    });
                  },
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color,
                    ),
                    child: Center(child: Text(submit,style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),),
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
  
  
}
class DropdownField extends StatefulWidget {
  final String hintText;
final IconData? icon;
List users = [];
final void Function(Object?) myvalue;
  DropdownField({ Key? key,required this.hintText,this.icon,required this.users,required this.myvalue}) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
String? selectedUser;
  

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
            child: Container(
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: DropdownButtonFormField(
                   decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                      
              borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white))),
            hint:  RichText(text: TextSpan(
              children: [
                WidgetSpan(child: Icon(widget.icon,color: Colors.red,)),
                TextSpan(text: widget.hintText,style: TextStyle(color: Colors.black)),
              ]
            ),),
            // value: selectedUser,
            isExpanded: true,
            // underline: SizedBox(),
            onChanged: widget.myvalue,
            items: widget.users.map(( user) {
              return  DropdownMenuItem(
                value: user,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Text(
                      user,
                      style:  TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
            ),
    );
  }
}
