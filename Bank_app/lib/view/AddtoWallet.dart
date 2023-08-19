import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/comandropDwon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widght/comanTextField.dart';
class AddToWallet extends StatefulWidget {
  const AddToWallet({Key? key}) : super(key: key);

  @override
  State<AddToWallet> createState() => _AddToWalletState();
}

class _AddToWalletState extends State<AddToWallet> {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(body: Column(
 children: [
   Row(

     children: [

       const SizedBox(height: 67,),

       Padding(

         padding: const EdgeInsets.only(left: 16,),

         child:  Center(
           child: GestureDetector(
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
       ),
       const SizedBox(width:57,),

       const Center(
         child: SizedBox(

           height: 29,

           width: 155,


           child:Text("Add to Wallet", style: CustomTextStyle.nameOfTextStyle,),

         ),
       ),
       const SizedBox(width:38,),
       Padding(
         padding:const EdgeInsets.only(right: 14,),
         child:Container(
           height: 40,
           width: 40,
           decoration: const BoxDecoration(
             image: DecorationImage(image: AssetImage(ImageAssests.Notification)),
             color: Color(0xFFE8FFEA),
           ),
         ),
       ),
     ],
   ),
   const SizedBox(height: 36,),
   Padding(
     padding: EdgeInsets.only(left: 16,right: 150),
     child: Text("Amount You Want to Transfer",style: TextStyle(fontFamily: "Inter",fontSize: 14,
         fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
   ),
   SizedBox(height:7,),
   CommonTextField(label: "Account Number", onChanged: (v){}),
   SizedBox(height:22,),
   Padding(
     padding: EdgeInsets.only(left: 16,right: 200),
     child: Text("Select Bank Account",style: TextStyle(fontFamily: "Inter",fontSize: 14,
         fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
   ),
   SizedBox(height:7,),
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
     }, label: 'Select Bank',
   ),
   SizedBox(height:52 ,),
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
           return  Container(
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
                         image: DecorationImage(image: AssetImage(ImageAssests.Trueicon)
                         )
                     ),
                   ),
                 ),
                 SizedBox(height: 17,),

                 Padding(

                   padding: const EdgeInsets.only(left: 60,right: 60),

                   child: Text("Success!",style: TextStyle(

                       fontFamily: "Inter",fontSize: 21,fontWeight: FontWeight.w600,color: Color(0xFF069948)

                   ),),
                 ),
                 SizedBox(height: 17,),

                 Padding(

                   padding: const EdgeInsets.only(left: 60,right: 60),

                   child: Text("\$200 successfully added to your wallet ",textAlign: TextAlign.center,  style: TextStyle(

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
