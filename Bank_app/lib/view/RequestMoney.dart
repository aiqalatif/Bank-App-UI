import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'widght/comanTextField.dart';
import 'widght/comandropDwon.dart';
class RequestMoney extends StatefulWidget {
  const RequestMoney({Key? key}) : super(key: key);

  @override
  State<RequestMoney> createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
  @override
  String dropdownvalue = '10000';
  String dropdwval = 'Daily';
  var orientation, size, height, width;

  // List of items in our dropdown menu
  var items = [
    '10000',
    '2000',
    '30000',
    '40000',
    '50000',
  ];
  var Duration = [
    'Daily',
    'Weekly',
    'Monthly',
    'yearly',
  ];
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
      children: [
        Row(

          children: [

            SizedBox(height: 67,),

            Padding(

              padding: const EdgeInsets.only(left: 16,),

              child:  Center(
                child: GestureDetector(
                  onTap: () {

                    Get.back();

                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE8FFEA),
                    ),
                    child: Image(image: AssetImage(ImageAssests.Vector)),
                  ),
                ),
              ),

            ),
            SizedBox(width:42,),

            Center(
              child: Container(

                height: 29,

                width: 179,


                child:Text("Request Money", style: CustomTextStyle.nameOfTextStyle,),

              ),
            ),
            SizedBox(width:27,),
            Padding(
              padding:const EdgeInsets.only(right: 14,),
              child:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageAssests.Notification)),
                  color: Color(0xFFE8FFEA),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 23,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 200),
          child: Text(
            'Request an Amount',
            style:TextStyle(fontFamily: "Inter",fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.black),
          ),
        ),
        SizedBox(height: 7,),
        CommonTextField(label: "Type here", onChanged: (v){}),
        SizedBox(height: 22,),
        Padding(
          padding: const EdgeInsets.only(left: 14,right: 239),
          child: Text(
            'Select Friend',
            style:TextStyle(fontFamily: "Inter",fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.black),
          ),
        ),
        SizedBox(height: 7,),
        DropDwon(
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdwval = newValue!;
            });
          }, label: '',
        ),
        SizedBox(height:22 ,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 220),
          child: Text(
            'Contact Number',
            style:TextStyle(fontFamily: "Inter",fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.black),
          ),
        ),
        SizedBox(height: 7,),
        CommonTextField(label: "Type here", onChanged: (v){}),
        SizedBox(height:43 ,),
        Container(
          height: 46,
          width: 200,
          child: ElevatedButton(
            child: Text('Send Request'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF019747),
            ),
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20))
                ),
                context: context, builder: (BuildContext context) {
                return Container(
                  height: 303,
                  width: 378,

                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300.0,right: 15,top: 13),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Container(
                            width: 41,
                            height: 41,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(ImageAssests.crossVector))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 17,),
                      Padding(
                        padding: const EdgeInsets.only(left: 120,right: 120),
                        child: Container(
                          height: 101,
                          width: 113,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(ImageAssests.quesmark)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 17,),

                      Padding(

                        padding: const EdgeInsets.only(left: 60,right: 60),

                        child: Text("Congratulations!",style: TextStyle(

                            fontFamily: "Inter",fontSize: 21,fontWeight: FontWeight.w600,color: Color(0xFF069948)

                        ),),
                      ),
                      SizedBox(height: 17,),

                      Padding(

                        padding: const EdgeInsets.only(left: 60,right: 60),

                        child: Text("Your money request is successfully send to your friend",textAlign: TextAlign.center,  style: TextStyle(

                          fontFamily: "Inter",fontSize: 15,fontWeight: FontWeight.w600,
                          color: Color(0xFF575757),

                        ),),
                      ),
                    ],
                  ) ,
                );
              },
              );
            },
          ),
        ),
      ],
    ),));
  }
}
