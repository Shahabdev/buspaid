import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    SizedBox(width: width * 0.2),
                    Text(
                      "Your Ticket",
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
                Container(
                  width: width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background color
                    borderRadius:
                    BorderRadius.circular(8.0.r), // Rounded corners
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
                    padding:
                    EdgeInsets.all(16.0), // Padding inside the container
                    child: Column(
                      children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Container(
                           height: height * 0.09,
                           width: width * 0.37, // Adjust the width as needed
                           // Set a height for the container
                           decoration: BoxDecoration(
                             color: Color(0xffF9F9F9), // Background color
                             borderRadius: BorderRadius.circular(15.r),

                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "ID",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff979590),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Text(
                                 "5835925721",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff2F2E2B),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),
                         ), Container(
                           height: height * 0.09,
                           width: width * 0.37, // Adjust the width as needed
                           // Set a height for the container
                           decoration: BoxDecoration(
                             color: Color(0xffF9F9F9), // Background color
                             borderRadius: BorderRadius.circular(15.r),

                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Full Name",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff979590),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Text(
                                 "Hilary Ouse",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff2F2E2B),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],),
                     SizedBox(height: height * 0.02,),
                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Container(
                           height: height * 0.09,
                           width: width * 0.37, // Adjust the width as needed
                           // Set a height for the container
                           decoration: BoxDecoration(
                             color: Color(0xffF9F9F9), // Background color
                             borderRadius: BorderRadius.circular(15.r),

                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Seat Place",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff979590),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Text(
                                 "Economy 2 / 3-A",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff2F2E2B),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),
                         ), Container(
                           height: height * 0.09,
                           width: width * 0.37, // Adjust the width as needed
                           // Set a height for the container
                           decoration: BoxDecoration(
                             color: Color(0xffF9F9F9), // Background color
                             borderRadius: BorderRadius.circular(15.r),

                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Terminal",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff979590),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Text(
                                 "14",
                                 style: GoogleFonts.poppins(
                                   fontSize: 14.sp,
                                   color: Color(0xff2F2E2B),
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),

                             ],
                           ),
                         ),

                       ],),
                        SizedBox(height:  height * 0.03,),
                        Image.asset(
                          "assets/Line.png",
                        ),SizedBox(height:  height * 0.034,),
                        Image.asset(
                          "assets/Barcode.png",
                        ),
                        SizedBox(height:  height * 0.01,),                        Text(
                          "Bookig Code: T4382Y582",
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Color(0xff2F2E2B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:  height * 0.03,),
                Text(
                  "Bus Itinerary",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff2F2E2B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.02,),
                Container(
                  width: width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background color
                    borderRadius:
                    BorderRadius.circular(8.0.r), // Rounded corners
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
                    padding:
                    EdgeInsets.all(16.0), // Padding inside the container
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TRAIN JOURNEY",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Color(0xff979590),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset("assets/up.png",width: width * 0.06,)
                          ],),
                        SizedBox(height: height * 0.02,),
                        Row(
                          children: [
                            Column(

                              children: [
                                Text(
                                  "11:00 AM",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff2F2E2B),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height:  height * 0.02,),
                                Container(
                                  width: 75.h,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF6F6F6),
                                      borderRadius:
                                      BorderRadius.circular(20.r)),
                                  child: Center(
                                    child: Text(
                                      "2h 20m",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Color(0xff3B4043),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height:  height * 0.02,),
                                Text(
                                  "11:00 AM",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff2F2E2B),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: width * 0.03,),
                            Column(
                              children: [
                                Image.asset("assets/Progress.png",height: height *0.13,)
                              ],
                            ),
                            SizedBox(width: width * 0.03,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Downey",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff2F2E2B),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                Text(
                                  "Downey Station",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff979590),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height:  height * 0.07,),
                                Text(
                                  "Greyhound",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff2F2E2B),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Greyhound Station",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff979590),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.02,),
                Container(
                  width: width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background color
                    borderRadius:
                    BorderRadius.circular(15.0.r), // Rounded corners
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
                    padding:
                    EdgeInsets.all(16.0), // Padding inside the container
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.info_outline_rounded,color: Color(0xff979590),),
                                SizedBox(width: width * 0.03,),
                                Text(
                                  "Requirement to Board",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff979590),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset("assets/down.png",width: width * 0.06,)
                          ],),

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
