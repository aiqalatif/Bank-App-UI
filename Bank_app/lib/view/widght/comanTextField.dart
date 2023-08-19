import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CommonTextField extends StatelessWidget {
  final String label;
  final ValueChanged<String> onChanged;
  const CommonTextField({
    super.key,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style:  TextStyle(

            fontFamily: "Inter",fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFFADA4A5)

        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF5F5F5),
          hintText: label,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: Color(0xFF95999B),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFF95999B),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}