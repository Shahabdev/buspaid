import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width, // Set the button width responsively
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor, // Customize the button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29.r), // Responsive border radius
          ),
          padding: EdgeInsets.symmetric(vertical: 14.h), // Responsive padding for height
        ),
        onPressed: onPressed, // Handle button tap
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
