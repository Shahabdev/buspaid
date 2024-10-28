import 'package:bus_booking/widget/custome_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color.dart';
import '../../widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfffdfdfd),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40.h,
                      color: Color(0xff302D2C),
                    ),
                    SizedBox(width: width * 0.3),
                    Text(
                      "Home",
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Color(0xff302D2C),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0.w),
                  child: Text(
                    "Book early your bus ticket anywhere and save 20%",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "One-Way",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Color(0xff282724),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          "Round Trip",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Color(0xffA0A0A0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Return?",
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Color(0xff282724),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Add some spacing between text and switch
                        Transform.scale(
                          scale:
                              0.7, // Adjust the scale factor to decrease the size
                          child: CupertinoSwitch(
                            activeColor:
                                Color(0xff7B61FF), // Adjust the color as needed
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "DEPARTURE",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff26272B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomTextField(
                    hintText: "New York, USA", showVisibilityToggle: false),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ARRIVE",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Color(0xff26272B),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 8.0.w),
                      child: Image.asset("assets/refresh.png",height: 29.h,width: 28.w,),
                    ),
          
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomTextField(
                    hintText: "Alabama, USA", showVisibilityToggle: false),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      "DATE",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Color(0xff26272B),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.39,
                    ),
                    Text(
                      "PASSENGER",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Color(0xff26272B),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.42,
                      child: CustomTextField(
                          hintText: "12 Nov 2022", showVisibilityToggle: false),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    SizedBox(
                      width: width * 0.42,
                      child: CustomTextField(
                          hintText: "4", showVisibilityToggle: false),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomButton(
                  text: "SEARCH BUS TICKET",
                  width: width * 0.89,
                  onPressed: () {
                    // Your button action here
                    print("Button Pressed");
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Cheap Bus Ticket",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff383F3E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  width: width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background color
                    borderRadius: BorderRadius.circular(12.0.r), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        blurRadius: 6.0, // Amount of blur for the shadow
                        spreadRadius: 2.0, // Spread of the shadow
                        offset: Offset(0, 3), // Position of the shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0), // Padding inside the container
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cheapest",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff8B9392),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "FCFA 230",
                                  style: GoogleFonts.poppins(
                                    fontSize: 22.sp,
                                    color: Color(0xff383F3E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
                                  child: Container(
                                    width: width *0.005,
                                    height: height *0.06,
                                    color: Color(0xffF4F2F2),
                                  ),
                                )
                              ],
                            ),Column(
                              children: [
                                Text(
                                  "Average",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff8B9392),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
          
                                Text(
                                  "FCFA 230",
                                  style: GoogleFonts.poppins(
                                    fontSize: 22.sp,
                                    color: Color(0xff383F3E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9), // Background color
                            borderRadius: BorderRadius.circular(18.0.r), // Rounded corners
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0), // Padding inside the container
                            child: Text(
                              "Find the cheapest fare by booking early",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Color(0xff8B9392),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),

                        CustomButton(
                          text: "SEARCH BUS TICKET",
                          width: width * 0.89,
                          onPressed: () {
                            // Your button action here
                            print("Button Pressed");
                          },
                        ),

          
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
