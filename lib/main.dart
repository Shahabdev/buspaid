import 'package:bus_booking/authentication_screens/signup_screen.dart';
import 'package:bus_booking/provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'app_screens/bottom_bar_screen.dart';
import 'authentication_screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => BottomSheetProvider()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignInScreen()
          //BottomBarScreen()

        ),
      ),
    );
  }
}


