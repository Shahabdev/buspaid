
import 'package:bus_booking/app_screens/notification_screen/notification_screen.dart';
import 'package:bus_booking/app_screens/p2v_screen/p2v_screen.dart';
import 'package:bus_booking/app_screens/profile_screen/profile_screen.dart';
import 'package:bus_booking/app_screens/search_screen/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../provider/bottom_bar_provider.dart';
import 'home_screen/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  var navbarItems;
  int currentTab = 0;
  late List<Widget> screens;
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen;
  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    navbarItems = [
      BottomNavigationBarItem(
        icon: Consumer<BottomSheetProvider>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.home,
                size: 30.h,
               // color: provider.currentValue == 0 ? Color(0xffFDD854) : Color(0xffE7DFDC),

              ),
            );

          },
        ),
        label: '',

      ),
      BottomNavigationBarItem(
        icon: Consumer<BottomSheetProvider>(
          builder: (context, provider, child) {
            return  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.map,
                size: 30.h,
               // color: provider.currentValue == 0 ? Color(0xffFDD854) : Color(0xffE7DFDC),

              ),
            );
          },
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Consumer<BottomSheetProvider>(
          builder: (context, provider, child) {
            return  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.tour_outlined,
                size: 30.h,
                // color: provider.currentValue == 0 ? Color(0xffFDD854) : Color(0xffE7DFDC),

              ),
            );
          },
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Consumer<BottomSheetProvider>(
          builder: (context, provider, child) {
            return  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.notifications_none,
                size: 30.h,
               // color: provider.currentValue == 0 ? Color(0xffFDD854) : Color(0xffE7DFDC),

              ),
            );
          },
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.red,
        icon: Consumer<BottomSheetProvider>(
          builder: (context, provider, child) {
            return  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.person_2_outlined,
                size: 30.h,
               // color: provider.currentValue == 0 ? Color(0xffFDD854) : Color(0xffE7DFDC),

              ),
            );
          },
        ),
        label: '',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var navbarBody = [
      /// screens using in bottom Bar
      HomeScreen(),
      SearchScreen(),
      P2VScreen(),
      NotificationScreen(),
      ProfileScreen()
    ];


    return Consumer<BottomSheetProvider>(
        builder: (context,provider,child) {
          return Scaffold(
              body: Column(
                children: [
                  Expanded(
                      child: navbarBody.elementAt(provider.currentValue)
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                currentIndex: provider.currentValue,
                items: navbarItems,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: primaryColor, // Color for the selected label
                unselectedItemColor: Color(0xffE7DFDC),
                selectedLabelStyle: TextStyle(color: Color(0xff999999)),
                onTap: (value) {
                  provider.setCurrentValue(value);
                },
              )
          );
        }
    );
  }
}