import "package:bankapppp/assest/assests-folder.dart";
import "package:bankapppp/res/colors.dart";
import "package:bankapppp/view/home.dart";
import "package:bankapppp/view/widght/CommanBottamStheet.dart";
import "package:bankapppp/view/widght/comanTextField.dart";
import"package:flutter/material.dart";
import "package:get/get.dart";
class ToBank extends StatefulWidget {
  const ToBank({Key? key}) : super(key: key);

  @override
  State<ToBank> createState() => _ToBankState();
}

class _ToBankState extends State<ToBank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
          SizedBox(width:86,),

        Container(

          height: 29,

          width: 127,


          child:Text("To Bank", style: CustomTextStyle.nameOfTextStyle,),

        ),
          SizedBox(width:37,),
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
            SizedBox(width:47,),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 233),
              child: Text("New Account",style: TextStyle(

                  fontFamily: "Inter",fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFFADA4A5)

              ),),
            ),
            SizedBox(height:23,),
            CommonTextField(label: "Account Number", onChanged: (v){}),
            SizedBox(height:15,),
            CommonTextField(label: "Account Holder Name", onChanged: (v){}),
            SizedBox(height:15,),
            CommonTextField(label: "Routing Number", onChanged: (v){}),
            SizedBox(height:15,),
            CommonTextField(label: "Name of Bank", onChanged: (v){}),
            SizedBox(height:15,),
            CommonTextField(label: "Phone Number ( Optional )", onChanged: (v){}),
            SizedBox(height:50 ,),
            Container(
              height: 46,
              width: 200,
              child: ElevatedButton(
                child: Text('Add Bank'),
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
                }
              ),
            ),
        ],
    ),
      ),
    ));
  }
}
