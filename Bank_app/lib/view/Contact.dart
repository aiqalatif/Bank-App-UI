import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Tocontact extends StatefulWidget {
  const Tocontact({Key? key}) : super(key: key);

  @override
  State<Tocontact> createState() => _TocontactState();
}

class _TocontactState extends State<Tocontact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
      children: [
        Row(
          children: [
            SizedBox(height: 67,),
            Padding(
              padding: const EdgeInsets.only(left: 16,),
              child: Center(
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
        SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 222),
        child: Text("Contact List",style: TextStyle(fontFamily: "Inter",fontSize: 18,
            fontWeight: FontWeight.w600,color: Color(0xFF27A560)),),
      ),
    Padding(
    padding: const EdgeInsets.only(top: 15,left: 38,right: 37),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFEFEFEF),
      ),

    child: Row(
    children:[
    IconButton(
    splashColor: Color(0xFF8A8A8D),
    icon: Icon(Icons.search),
    onPressed: () {},
    ),
        Expanded(
    child: TextField(
    cursorColor: Colors.black,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.go,
    decoration: InputDecoration(
    border: InputBorder.none,
    contentPadding:
    EdgeInsets.symmetric(horizontal: 15),
    hintText: "Type here"),
    ),
    ),
      ],
    ),
    ),
    ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 17),
          child: Container(
            height: 213,
            width: 342,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child:Column(
              children: [
                SizedBox(height: 21,),
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 295),
                  child: Text("A",style: TextStyle(
                    fontFamily: "Inter",fontSize: 22,fontWeight: FontWeight.w500,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 32),
                  child: Divider(
                    color: Color(0xFFDBDBDB),
                  ),
                ),
                SizedBox(height: 18,),
                Row(
                  children: [
                    SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 32,),
                     child: Container(
                       decoration: BoxDecoration(
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 5,
                             blurRadius: 25,
                             offset: Offset(0, 3),
                           ),
                         ],
                       ),
                       child: CircleAvatar(
                         child: Image.asset(ImageAssests.pics),
                       ),
                     ),
                   ),
                     SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                 Padding(
                   padding: const EdgeInsets.only(left: 89.0,right: 42),
                   child: Container(height: 18,
                   width: 18,
                   child:GestureDetector(
                       onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => ContactNumber()),
                       );
                     },
                     child: Image.asset(ImageAssests.fullicon),
                   )),
                 )
                  ],
                ),
                SizedBox(height: 21,),
                Row(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 25,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          child: Image.asset(ImageAssests.pics),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89.0,right: 42),
                      child: Container(height: 18,
                        width: 18,
                        child:Image.asset(ImageAssests.trueicon) ,),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 17),
          child: Container(
            height: 300,
            width: 334,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child:Column(
              children: [
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 295),
                  child: Text("B",style: TextStyle(
                    fontFamily: "Inter",fontSize: 22,fontWeight: FontWeight.w500,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 32),
                  child: Divider(
                    color: Color(0xFFDBDBDB),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 25,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          child: Image.asset(ImageAssests.pics),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89.0,right: 42),
                      child: Container(height: 18,
                        width: 18,
                        child:Image.asset(ImageAssests.trueicon) ,),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,),
                      child: Container(
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
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 25,
                                offset: Offset(0, 3),
                              ),
                            ],
                            ),

                          child: CircleAvatar(
                            child: Image.asset(ImageAssests.pics),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89.0,right: 42),
                      child: Container(height: 18,
                        width: 18,
                        child:Image.asset(ImageAssests.trueicon) ,),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 25,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          child: Image.asset(ImageAssests.pics),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89.0,right: 42),
                      child: Container(height: 18,
                        width: 18,
                        child:Image.asset(ImageAssests.trueicon) ,),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 25,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          child: Image.asset(ImageAssests.pics),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Column(
                      children: [
                        Text("Aason Adam",style: TextStyle(
                          fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF575757),
                        ),),
                        Text("AC: 213-4213-1",style: TextStyle(
                          fontFamily: "Inter",fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF7E7E7E),
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 89.0,right: 42),
                      child: Container(height: 18,
                        width: 18,
                        child:Image.asset(ImageAssests.trueicon) ,),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    )));
  }
 //
}
