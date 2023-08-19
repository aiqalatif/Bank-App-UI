import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/view/Banktobank.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
class BottamSheet extends StatefulWidget {
  const BottamSheet({Key? key}) : super(key: key);

  @override
  State<BottamSheet> createState() => _BottamSheetState();
}

class _BottamSheetState extends State<BottamSheet> {
  @override
  Widget build(BuildContext context) {
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
                  image: DecorationImage(image: AssetImage(ImageAssests.Trueicon)
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
  }
}
