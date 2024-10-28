import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final String imagePath;

  const GoogleIconButton({
    Key? key,
    required this.onPressed,
    this.size = 52.0,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      width: 82.w,
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey, width: 2), // Border color
      ),
      child: TextButton(
        onPressed: onPressed, // Call the provided callback on press
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove padding for a compact button
        ),
        child: Center(
          child: Image.asset(
            imagePath, // Path to your image asset
            width: size * 0.5, // Adjust width as needed
            height: size * 0.5, // Adjust height as needed
          ),
        ),
      ),
    );
  }
}