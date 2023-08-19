import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/ToBank2.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
class Tobank extends StatefulWidget {
  const Tobank({Key? key}) : super(key: key);

  @override
  State<Tobank> createState() => _TobankState();
}

class _TobankState extends State<Tobank> {
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
                child: Center(
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
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 196,),
          Center(
            child: Container(
              height: 149,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageAssests.Cross)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("No Account Added",style: TextStyle(

                fontFamily: "Inter",fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFFADA4A5)

            ),),
          ),
        SizedBox(height:185 ,),
          Container(
            height: 46,
            width: 200,
            child: ElevatedButton(
              child: Text('Add Bank'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF019747),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToBank()),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
