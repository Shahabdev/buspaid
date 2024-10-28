import 'package:bus_booking/app_screens/bottom_bar_screen.dart';
import 'package:bus_booking/authentication_screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';
import '../widget/custom_social_button.dart';
import '../widget/custome_switch_button.dart';
import '../widget/line_text_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  get imagePaths => null;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/logo.png",height:  screenWidth * 0.49,),
              Padding(
                padding: EdgeInsets.only(left: 24.0.w),
                child: Row(
                  children: [
                    Text(
                      "Sign Up ",
                      style: GoogleFonts.inter(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff20222C)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 8.h),
                child: Row(
                  children: [
                    Text(
                      "Give cradential to sign in your account  ",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1e252d)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0, top: 10.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0.w),
                      child: Text(
                        "Username or Email  ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              const CustomTextField(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "type useremail, ",
                showVisibilityToggle: false,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: 29.0.w),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              const CustomTextField(
                prefixIcon: Icon(Icons.lock_outline_rounded),
                hintText: "Password",
                showVisibilityToggle: true,
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.w),
                child: Row(
                  children: [
                    Switch_on_off_Button(
                      onChanged: (value) => value,
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Text(
                      "Remember Me",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1E252D)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "LOST YOUR PASSWORD?",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              categoryLoginButton(text: "SIGIN UP",onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
              SizedBox(height: screenHeight * 0.02),
              LineWithText(text: "or continue with",lineWidth: screenWidth * 0.27,),

              //here me
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: GoogleIconButton(
                          onPressed: () {}, imagePath: "assets/FB.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: GoogleIconButton(
                          onPressed: () {}, imagePath: "assets/Google.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: GoogleIconButton(
                          onPressed: () {}, imagePath: "assets/Vector.png"),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "SIGN IN",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: primaryColor),
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}

//////////////////////////
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextField(
        obscureText: _obscureText, // Use the toggle state
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle:
          GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: const Color(0xff1e252d)),
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
      ),
    );
  }
}
//  signbutton

class categoryLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const categoryLoginButton(
      {Key? key,
        required this.onPressed,
        this.text = "SIGN IN", //change it according to your use
        this.color = const Color(0xfffdd854)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 65.h,
      decoration: BoxDecoration(
        color: Colors
            .transparent, // Ensure the container's background is transparent
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(5, 8), // Shadow offset
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
            //  rounded corners of container
          ),
          backgroundColor: primaryColor,
          //iconColor: Color(0xffFDD854), // Button color
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp, // Set the font size
            fontWeight: FontWeight.w600,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}