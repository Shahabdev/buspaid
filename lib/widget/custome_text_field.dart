import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool showVisibilityToggle;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = true,
    this.prefixIcon,
    required this.showVisibilityToggle,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText; // Initialize with the provided value
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: _obscureText, // Use the toggle state
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        filled: true, // Enable fill color
        fillColor: Colors.white, // Set the fill color to white
        hintText: widget.hintText,
        hintStyle: GoogleFonts.poppins(
          color: Color(0xffA0A0A0),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.w),
          borderSide: BorderSide(color: Color(0xFFF2F4F8)), // Default border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.w),
          borderSide: BorderSide(color: Color(0xFFF2F4F8)), // Unfocused border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.w),
          borderSide: BorderSide(color: Color(0xFFF2F4F8)), // Focused border color
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.showVisibilityToggle && widget.obscureText
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: const Color(0xff1e252d), // Optional: change color
          ),
          onPressed: _togglePasswordVisibility, // Toggle visibility
        )
            : null, // If not obscured, no suffix icon
      ),
    );
  }

}