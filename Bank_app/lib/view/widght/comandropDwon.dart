import 'package:bankapppp/assest/assests-folder.dart';
import 'package:flutter/material.dart';
class  DropDwon extends StatelessWidget {
final List<DropdownMenuItem<String>> items;
final ValueChanged<String?> onChanged;
final String? value;
final String label;

  const DropDwon({super.key, required this.items, required this.onChanged, this.value, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
         color:  Color(0xFFF5F5F5),
          border: Border.all(
            color: const Color(0xFF95999B),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButton(

          value: value,
          icon: const Icon(Icons.keyboard_arrow_down),
          hint: Text("Select Friend",style: TextStyle(fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF575757)),),
          iconSize: 20,
          isExpanded: true,
          underline: const SizedBox(),
          items: items,
          onChanged: onChanged,
        )
    );

  }
}



