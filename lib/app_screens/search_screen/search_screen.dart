import 'package:bus_booking/app_screens/search_screen/details_bus_ticket.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  double _rating = 5.0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30.h,
                      color: Color(0xff302D2C),
                    ),
                    SizedBox(width: width * 0.3),
                    Text(
                      "Search",
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Color(0xff302D2C),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Cameroun",
                              style: GoogleFonts.poppins(
                                fontSize: 22.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: width * 0.01),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  "assets/doted_lines.png",
                                  width: width * 0.24,
                                ),
                                Container(
                                  width: 50.h,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Color(0xffFDD854),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Douala",
                              style: GoogleFonts.poppins(
                                fontSize: 22.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Cameroun",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: width * 0.4),
                            Text(
                              "Douala",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          "Thursday, 24 Nov 2023",
                          style: GoogleFonts.lato(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "14 Bus Tickets From Cameroun to Douala",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Color(0xff313737),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.02),

                // TabBar for days of the week
                Container(
                  width: width * 0.9,
                  child: DefaultTabController(
                    length: 7, // Number of tabs
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: primaryColor, // Yellow underline
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(text: 'MON'),
                            Tab(text: 'TUE'),
                            Tab(text: 'WED'),
                            Tab(text: 'THU'),
                            Tab(text: 'FRI'),
                            Tab(text: 'SAT'),
                            Tab(text: 'SUN'),
                          ],
                        ),
                        SizedBox(height: 10.h), // Space between TabBar and content
                        // Content for the selected tab
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsBusTicket()));
                          },
                          child: Container(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "Bus 1",
                                         style: GoogleFonts.poppins(
                                           fontSize: 15.sp,
                                           color: Color(0xff2C2F2E),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),Text(
                                         "2+2 Seaters B/D",
                                         style: GoogleFonts.poppins(
                                           fontSize: 13.sp,
                                           color: Color(0xff787C7B),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),
                                     ],
                                   ),
                                   Column(
                                     children: [
                                       Container(
                                         height: height * 0.07,
                                         width: width * 0.3, // Adjust the width as needed
                                          // Set a height for the container
                                         decoration: BoxDecoration(
                                           color: Color(0xFFFAFAFA), // Background color
                                           borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(12.0.r), // Rounded top-right corner
                                             bottomRight: Radius.circular(12.0.r), // Rounded bottom-right corner
                                           ),

                                         ),
                                         child: Center(
                                           child: Text(
                                             "FCFA 5560",
                                             style: GoogleFonts.poppins(
                                               fontSize: 18.sp,
                                               color: primaryColor,
                                               fontWeight: FontWeight.w500,
                                             ),
                                           ),
                                         ),
                                       ),


                                     ],
                                   )
                                 ],
                               ),
                                  Row(
                                    children: [
                                      Image.asset("assets/elements.png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (1).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (2).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (3).png",height: height * 0.02,),SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/lunch.png",height: height * 0.03,color: primaryColor,),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02,),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.9, // Adjust the width as needed
                                    // Set a height for the container
                                    decoration: BoxDecoration(
                                      color: Color(0xfffafafa), // Background color
                                      borderRadius: BorderRadius.circular(10.r),

                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 8.0,left: 8.w,right: 8.w),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Town A",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "10:15 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),Column(
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/Line.png",
                                                    width: width * 0.34,
                                                  ),
                                                  Container(
                                                    width: 70.h,
                                                    height: 40.h,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(10.r)
                                                    ),
                                                    child: Center(
                                                      child:  Text(
                                                        "1h 20m",
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15.sp,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Town B",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "11:35 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:  height * 0.02,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsBusTicket()));
                          },
                          child: Container(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "Bus 2",
                                         style: GoogleFonts.poppins(
                                           fontSize: 15.sp,
                                           color: Color(0xff2C2F2E),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),Text(
                                         "2+2 Seaters B/D",
                                         style: GoogleFonts.poppins(
                                           fontSize: 13.sp,
                                           color: Color(0xff787C7B),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),
                                     ],
                                   ),
                                   Column(
                                     children: [
                                       Container(
                                         height: height * 0.07,
                                         width: width * 0.28, // Adjust the width as needed
                                          // Set a height for the container
                                         decoration: BoxDecoration(
                                           color: Color(0xFFFAFAFA), // Background color
                                           borderRadius: BorderRadius.circular(15.r),

                                         ),
                                         child: Center(
                                           child: Text(
                                             "FCFA 6665",
                                             style: GoogleFonts.poppins(
                                               fontSize: 18.sp,
                                               color: primaryColor,
                                               fontWeight: FontWeight.w500,
                                             ),
                                           ),
                                         ),
                                       ),


                                     ],
                                   )
                                 ],
                               ),
                                  Row(
                                    children: [
                                      Image.asset("assets/elements.png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (1).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (2).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (3).png",height: height * 0.02,),SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/lunch.png",height: height * 0.03,color: primaryColor,),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02,),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.9, // Adjust the width as needed
                                    // Set a height for the container
                                    decoration: BoxDecoration(
                                      color: Color(0xfffafafa), // Background color
                                      borderRadius: BorderRadius.circular(10.r),

                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 8.0,left: 8.w,right: 8.w),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Town A",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "10:15 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),Column(
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/Line.png",
                                                    width: width * 0.34,
                                                  ),
                                                  Container(
                                                    width: 70.h,
                                                    height: 40.h,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(10.r)
                                                    ),
                                                    child: Center(
                                                      child:  Text(
                                                        "1h 20m",
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15.sp,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Town B",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "11:35 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:  height * 0.02,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsBusTicket()));
                          },
                          child: Container(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "Bus 3",
                                         style: GoogleFonts.poppins(
                                           fontSize: 15.sp,
                                           color: Color(0xff2C2F2E),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),Text(
                                         "2+2 Seaters B/D",
                                         style: GoogleFonts.poppins(
                                           fontSize: 13.sp,
                                           color: Color(0xff787C7B),
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),
                                     ],
                                   ),
                                   Column(
                                     children: [
                                       Container(
                                         height: height * 0.07,
                                         width: width * 0.26, // Adjust the width as needed
                                          // Set a height for the container
                                         decoration: BoxDecoration(
                                           color: Color(0xFFFAFAFA), // Background color
                                           borderRadius: BorderRadius.circular(15.r),

                                         ),
                                         child: Center(
                                           child: Text(
                                             "FCFA 7550",
                                             style: GoogleFonts.poppins(
                                               fontSize: 18.sp,
                                               color: primaryColor,
                                               fontWeight: FontWeight.w500,
                                             ),
                                           ),
                                         ),
                                       ),


                                     ],
                                   )
                                 ],
                               ),
                                  Row(
                                    children: [
                                      Image.asset("assets/elements.png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (1).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (2).png",height: height * 0.02,),
                                      SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/elements (3).png",height: height * 0.02,),SizedBox(width:  width * 0.02,),
                                      Image.asset("assets/lunch.png",height: height * 0.03,color: primaryColor,),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02,),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.9, // Adjust the width as needed
                                    // Set a height for the container
                                    decoration: BoxDecoration(
                                      color: Color(0xfffafafa), // Background color
                                      borderRadius: BorderRadius.circular(10.r),

                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 8.0,left: 8.w,right: 8.w),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Town A",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "10:15 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),Column(
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/Line.png",
                                                    width: width * 0.34,
                                                  ),
                                                  Container(
                                                    width: 70.h,
                                                    height: 40.h,
                                                    decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius: BorderRadius.circular(10.r)
                                                    ),
                                                    child: Center(
                                                      child:  Text(
                                                        "1h 20m",
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15.sp,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Town B",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Color(0xff2C2F2E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),Text(
                                                "11:35 am",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13.sp,
                                                  color: Color(0xff787C7B),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
