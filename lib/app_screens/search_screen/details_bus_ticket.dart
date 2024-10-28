import 'package:bus_booking/app_screens/search_screen/seat_screen.dart';
import 'package:bus_booking/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color.dart';

class DetailsBusTicket extends StatefulWidget {
  const DetailsBusTicket({super.key});

  @override
  State<DetailsBusTicket> createState() => _DetailsBusTicketState();
}

class _DetailsBusTicketState extends State<DetailsBusTicket> {
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
                    SizedBox(width: width * 0.17),
                    Text(
                      "Detail Bus Ticket",
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
                        Stack(
                          children: [
                            Container(
                              width: 358.w,
                              height: 165.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffCECED5),
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                            Positioned(
                              top: 10.h,
                              left: 210.w,
                              child: Container(
                                height: height * 0.06,
                                width:
                                    width * 0.24, // Adjust the width as needed
                                // Set a height for the container
                                decoration: BoxDecoration(
                                  color: Colors.white, // Background color
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "FCFA 73",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      color: Color(0xff313737),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  " 24 November 2023",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Color(0xff888B8B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Cameroun",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: Color(0xff313737),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: height * 0.06,
                              width: width * 0.15, // Adjust the width as needed
                              // Set a height for the container
                              decoration: BoxDecoration(
                                color: Color(0xFFFAFAFA), // Background color
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.035),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cameroun",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Color(0xff888B8B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Cameroun",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Color(0xff313737),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/Route.png",
                                  width: width * 0.32,
                                  color: primaryColor,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Cameroun",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Color(0xff888B8B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Cameroun",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Color(0xff313737),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Image.asset(
                          "assets/Line.png",
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "DEPART",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Color(0xff2C2F2E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "10:15 am",
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
                                  width: 75.h,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF6F6F6),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Center(
                                    child: Text(
                                      "1h 20m",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Color(0xff3B4043),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "BUS TICKET NO",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    color: Color(0xff787C7B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "BF94721394",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13.sp,
                                    color: Color(0xff2C2F2E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Ticket Price",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    color: Color(0xff787C7B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "FCFA 5500",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20.sp,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CustomButton(text: "VIEW DETAILS",
                                    width: width * 0.5, onPressed: (){})
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01,),
                Text(
                  "More information",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Color(0xff313737),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.01,),
                Text(
                  textAlign: TextAlign.justify,
                  "Cras fermentum dui est, non eleifend massa dapibus eu. Aenean maximus tortor et sapien pellentesque.Cras fermentum dui est, non eleifend massa dapibus.",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: Color(0xff888B8B),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: height * 0.02,),
                CustomButton(text: "BOOK NOW", width: width, onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeatSelectionScreen()));
                }),
                SizedBox(
                  height: height * 0.06,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
