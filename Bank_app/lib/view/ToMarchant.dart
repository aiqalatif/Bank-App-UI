import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/CommanBottamStheet.dart';
import 'package:bankapppp/view/widght/comanTextField.dart';
import 'package:flutter/material.dart';
class ToMarchant extends StatefulWidget {
  const ToMarchant({Key? key}) : super(key: key);

  @override
  State<ToMarchant> createState() => _ToMarchantState();
}

class _ToMarchantState extends State<ToMarchant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Row(

            children: [

              SizedBox(height: 67,),

              Padding(

                padding: const EdgeInsets.only(left: 16,),

                child:  Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Home()),
                      );
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
              SizedBox(width:60,),

              Center(
                child: Container(

                  height: 29,

                  width: 169,


                  child:Text("To Merchant", style: CustomTextStyle.nameOfTextStyle,),

                ),
              ),
              SizedBox(width:17,),
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
            padding: const EdgeInsets.only(left: 16,right: 161),
            child: Text(
              'Merchant’s Account Number',
              style:TextStyle(fontFamily: "Inter",fontSize: 14,
                  fontWeight: FontWeight.w400,color: Colors.black),
            ),
          ),
          SizedBox(height: 7,),
          CommonTextField(label: "Type here", onChanged: (v){}),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 260),
            child: Text(
              'View Details',
              style:TextStyle(fontFamily: "Inter",fontSize: 14,
                  fontWeight: FontWeight.w400,color: Color(0xFFE8B500),decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 290),
            child: Text(
              'Amount',
              style:TextStyle(fontFamily: "Inter",fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.black,),
            ),
          ),
          SizedBox(height: 7,),
          CommonTextField(label: "Type here", onChanged: (v){}),
          SizedBox(height:33 ,),
          Container(
            height: 46,
            width: 200,
            child: ElevatedButton(
              child: Text('Transfer'),
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
                  return BottamSheet();
                },
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
