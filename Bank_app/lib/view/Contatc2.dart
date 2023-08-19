import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/ToBank.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ContactNumber extends StatefulWidget {
  const ContactNumber({Key? key}) : super(key: key);

  @override
  State<ContactNumber> createState() => _ContactNumberState();
}
buttonPressed(){}
Widget  buildButton(String buttonText){
  return Expanded(
      child: SizedBox(height: 60,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Colors.transparent,
          ),
        ),
        child: Text(
          buttonText,
          style:  TextStyle(
              fontFamily: "Inter",fontSize: 37,fontWeight: FontWeight.w300,color: Colors.white
          ),
        ),
        onPressed: ()=>buttonPressed(),
      ),),
  );
   }

class _ContactNumberState extends State<ContactNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
body: SingleChildScrollView(
  child:   Column(
  
    children: [
  
      Row(
  
        children: [
  
          SizedBox(height: 67,),
  
          Padding(
  
            padding: const EdgeInsets.only(left: 16,),
  
            child: GestureDetector(
              child: GestureDetector(
                onTap: () {

                  Get.back();

                },
              child: Container(


                height: 40,

                width: 40,

                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage(ImageAssests.Vector)),

                  color: Color(0xFFE8FFEA),
                  borderRadius: BorderRadius.circular(8),

                ),

              ),
            ),
  
          ),
          ),
          SizedBox(width:68,),
  
          Container(
  
            height: 29,
  
            width: 127,

  
            child:Text("To Contact", style: CustomTextStyle.nameOfTextStyle,),
  
          ),
  
          SizedBox(width:47,),
  
          Padding(
  
            padding:const EdgeInsets.only(right: 14,),
  
            child:Container(
  
              height: 40,
  
              width: 40,
  
              decoration: BoxDecoration(
  
                image: DecorationImage(image: AssetImage(ImageAssests.Notification)),
  
                color: Color(0xFFE8FFEA),
                borderRadius: BorderRadius.circular(8)
  
              ),
  
            ),
  
          ),
  
        ],
  
      ),
  
       Padding(

         padding: const EdgeInsets.only(left: 154,right: 154),

         child: Container(

          height: 67,
           width: 67,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 30,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: CircleAvatar(

            child: Image.asset(ImageAssests.CircalAvator),

          ),

      ),

       ),

      Text("Jane Cooper",style: TextStyle(
  
        fontFamily: "Inter",fontSize: 22,fontWeight: FontWeight.w500,
  
      ),),
  
      Text("(270) 555-0117",style: TextStyle(
  
        fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w400,
  
      ),),
  
      SizedBox(height: 20,),
  
      Container(
  
        height: 41,
  
        width: 175,
  
        decoration: BoxDecoration(
  
          borderRadius: BorderRadius.circular(15),
  
          color: Color(0xFFA0F9A9),
  
        ),
  
        child:Row(
  
          children: [
  
            Padding(
  
              padding: const EdgeInsets.only(left: 8.0),
  
              child: Container(
  
                height: 50,
  
                width: 60,
  
                decoration: BoxDecoration(
  
                  image: DecorationImage(image: AssetImage(ImageAssests.IconM),
  
                  ),
  
                )),
  
            ),
  
            SizedBox(width: 3,),
            Text("****** 2452"),
            SizedBox(width: 10,),
            Container(
              height: 5,
              width: 9.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageAssests.arowicon),
                ),
              ),
            )
  
          ],
  
        ) ,
  
      ),
  
      SizedBox(height: 20,),
  
      Container(
  
        height:462,
  
        width: 375,
  
        decoration: BoxDecoration(
  
          color: Color(0xFFE8B912),
  
          borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))
  
        ),
  
        child: Column(
  
          children: [
  
            SizedBox(height: 29,),
  
            Padding(
  
              padding: const EdgeInsets.only(left: 148,right: 146),
  
              child: Text("Amount",style: TextStyle(
  
                fontFamily: "Inter",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white
  
              ),),
  
            ),
            SizedBox(height: 9,),
  
            Container(
  
              height: 45,
  
              width: 271,

              decoration: BoxDecoration(
  
                color: Color(0xFFEECE5A),
  
                borderRadius: BorderRadius.circular(15),
  
              ),
  
             
  
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 26,fontFamily:"Inter" ),
  
              ),
            ),
            SizedBox(height: 5,),

            Padding(

              padding: const EdgeInsets.only(left: 60,right: 60),

              child: Text("2% commission. Pay a commission \$70.25",style: TextStyle(

                  fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white

              ),),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  children: [
                   buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
          ]
                ),
                Row(
                    children: [
                      buildButton("6"),
                      buildButton("5"),
                      buildButton("4"),
                    ]
                ),
                Row(
                    children: [
                      buildButton("7"),
                      buildButton("8"),
                      buildButton("9"),
                    ]
                ),
                Row(
                    children: [
                      buildButton("."),
                      buildButton("0"),
                     Padding(
                       padding: const EdgeInsets.only(right: 20),
                       child: GestureDetector(
                         onTap: (){
                           print("button pressed");
                         },
                         child: Container(
                           height: 60,
                           width: 100,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage(ImageAssests.IconButton),
                             )
                           ),

                         ),
                       ),
                     ),
                    ]
                ),
              ],
            ),
           SizedBox(height: 15,),
           Container(
             height: 46,
             width: 222,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
             ),
             child: ElevatedButton(
               child: Text('Send Money'),
               onPressed: () {
                 showModalBottomSheet(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                   ),
                     context: context, builder:(BuildContext context){

                   return Container(
                     height: 303,
                     width: 378,

                           child:Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 300.0,right: 15,top: 13),
                           child: GestureDetector(
                             onTap: () {

                                 Get.to(Tobank());

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
                               image: DecorationImage(image: AssetImage(ImageAssests.starimage)
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

                           child: Text("\$3,432 is successfully transferred to Jane Cooper ",textAlign: TextAlign.center,  style: TextStyle(

                               fontFamily: "Inter",fontSize: 15,fontWeight: FontWeight.w600,
                           color: Color(0xFF575757),

                           ),),
                         ),
                       ],
                     ) ,
                   );
                 });
               },
               style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xFF019747),
                   padding: EdgeInsets.only(left: 50, right: 50),
                   textStyle: TextStyle(
                       fontSize: 16,
                       fontWeight:FontWeight.w500,
                   fontFamily: "Inter")),
             ),
           ),
          ],
  
        ),
  
      ),
  
    ],
  
  ),
),
    ));
  }


}
