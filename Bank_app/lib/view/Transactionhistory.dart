import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(

              children: [

                const SizedBox(height: 67,),

                Padding(

                  padding: const EdgeInsets.only(left: 16,),

                  child: Center(
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
                const SizedBox(width:17,),

                const Center(
                  child: SizedBox(

                    height: 29,

                    width: 225,


                    child:Text("Transaction History", style: CustomTextStyle.nameOfTextStyle,),

                  ),
                ),
                const SizedBox(width:8,),
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
            const SizedBox(height: 26,),
            Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                color: const Color(0xFFEE8B500),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 9,),
                  Container(

                    height: 41,

                    width: 175,

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15),

                      color: const Color(0xFFFFE588),

                    ),

                    child:Row(

                      children: [

                        Padding(

                          padding: const EdgeInsets.only(left: 8.0),

                          child: Container(

                              height: 50,

                              width: 60,

                              decoration: const BoxDecoration(

                                image: DecorationImage(image: AssetImage(ImageAssests.IconM),

                                ),

                              )),
                        ),

                        const SizedBox(width: 3,),
                        const Text("****** 2452"),
                        const SizedBox(width: 10,),
                        GestureDetector(

                          child: Container(
                            height: 5,
                            width: 9.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(ImageAssests.arowicon),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ) ,
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.only(left: 90,right: 90),
                    child: Text("\$ 7,435.00",style: TextStyle(fontFamily: "Inter",fontSize: 30,
                        fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                  const SizedBox(height: 11,),
                  const Padding(
                    padding: EdgeInsets.only(left: 120,right: 120),
                    child: Text("Current Balance",style: TextStyle(fontFamily: "Inter",fontSize: 12,
                        fontWeight: FontWeight.w400,color: Colors.white),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23,),
            const Padding(
              padding: EdgeInsets.only(left: 16,right: 280),
              child: Text("History",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                  fontWeight: FontWeight.w600,color: Colors.green),),
            ),
            const SizedBox(height: 12,),
            const Padding(
              padding: EdgeInsets.only(left: 16,right: 300),
              child: Text("Today",style: TextStyle(fontFamily: "Inter",fontSize: 16,
                  fontWeight: FontWeight.w500,color: Color(0xFF878787)),),
            ),
            const SizedBox(height: 12,),
          Material(
            elevation: 5.0,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),

            ),
            child: Container(
            width: 342,
            height: 79,
            decoration: BoxDecoration(

            ),
            child: Column(
              children: [
             Row(
               children: [
                 const Padding(
                   padding: EdgeInsets.only(left: 10,top: 12),
                   child: Image(image: AssetImage(ImageAssests.Group)
                   ),
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     Padding(
                       padding: EdgeInsets.only(left: 13,top: 19),
                       child: Text("Shopping",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                           fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
                     ),
                     SizedBox(height: 4,),
                     Padding(
                       padding: EdgeInsets.only(left: 13,),
                       child: Text("4:34 PM",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                           fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E)),),
                     ),
                   ],
                 ),
                 Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.only(left: 137,right: 12),
                       child: Image(image: AssetImage(ImageAssests.arrow),
                       ),
                     ),
                     SizedBox(height: 3.5,),
                     Padding(
                       padding: EdgeInsets.only(left: 137,right: 16),
                       child: Text("\$5.84",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                           fontWeight: FontWeight.w400,color: Color(0xFF36B543)),),
                     ),
                   ],
                 ),
               ],
             ),

              ],
            ),
        ),
          ),
            const SizedBox(height: 12,),
            Material(
              elevation: 5.0,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                width: 342,
                height: 79,
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10,top: 12),
                          child: Image(image: AssetImage(ImageAssests.Rectangular)
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 13,top: 19),
                              child: Text("To Bank",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: EdgeInsets.only(left: 13,),
                              child: Text("4:34 PM",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E)),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 148,right: 12),
                              child: Image(image: AssetImage(ImageAssests.arrow),
                              ),
                            ),
                            SizedBox(height: 3.5,),
                            Padding(
                              padding: EdgeInsets.only(left: 148,right: 16),
                              child: Text("\$5.84",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF36B543)),),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 13,),
            Material(
              elevation: 5.0,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                width: 342,
                height: 79,
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10,top: 12),
                          child: Image(image: AssetImage(ImageAssests.Rectangular1),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 13,top: 19),
                              child: Text("Shopping",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: EdgeInsets.only(left: 13,),
                              child: Text("12:23 AM",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E)),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 137,right: 12),
                              child: Image(image: AssetImage(ImageAssests.arrowdwon),
                              ),
                            ),
                            SizedBox(height: 3.5,),
                            Padding(
                              padding: EdgeInsets.only(left: 137,right: 16),
                              child: Text("\$5.84",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFFE8B500)),),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            const Padding(
              padding: EdgeInsets.only(left: 16,right: 270),
              child: Text("Yesterday",style: TextStyle(fontFamily: "Inter",fontSize: 16,
                  fontWeight: FontWeight.w500,color: Color(0xFF878787)),),
            ),
            const SizedBox(height: 12,),
            Material(
              elevation: 5.0,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                width: 342,
                height: 79,
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10,top: 12),
                          child: Image(image: AssetImage(ImageAssests.Rectangular)
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 13,top: 19),
                              child: Text("Shopping",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: EdgeInsets.only(left: 13,),
                              child: Text("4:34 PM",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E)),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 137,right: 12),
                              child: Image(image: AssetImage(ImageAssests.arrow),
                              ),
                            ),
                            SizedBox(height: 3.5,),
                            Padding(
                              padding: EdgeInsets.only(left: 137,right: 16),
                              child: Text("\$5.84",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF36B543)),),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Material(
              elevation: 5.0,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                width: 342,
                height: 79,
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10,top: 12),
                          child: Image(image: AssetImage(ImageAssests.Rectangular)
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 13,top: 19),
                              child: Text("Shopping",style: TextStyle(fontFamily: "Inter",fontSize: 18,
                                  fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: EdgeInsets.only(left: 13,),
                              child: Text("4:34 PM",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E)),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 137,right: 12),
                              child: Image(image: AssetImage(ImageAssests.arrow),
                              ),
                            ),
                            SizedBox(height: 3.5,),
                            Padding(
                              padding: EdgeInsets.only(left: 137,right: 16),
                              child: Text("\$5.84",style: TextStyle(fontFamily: "Inter",fontSize: 10,
                                  fontWeight: FontWeight.w400,color: Color(0xFF36B543)),),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));

  }
}
