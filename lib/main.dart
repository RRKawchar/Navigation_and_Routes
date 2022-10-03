import 'package:flutter/material.dart';
import 'package:navigation_and_route/main_screen/home_screen.dart';
import 'package:navigation_and_route/professional_way/utils/route_name.dart';
import 'package:navigation_and_route/professional_way/utils/routes.dart';
import 'package:navigation_and_route/professional_way/utils/utils_screen/home_page.dart';
import 'package:navigation_and_route/screen/screen_three.dart';
import 'package:navigation_and_route/screen/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation and Route',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: HomePage(),
      initialRoute: RouteName.homePage,
      onGenerateRoute: Routes.generateRoute,

      // initialRoute: HomeScreen.id,
      //
      // routes: {
      //   HomeScreen.id : (context)=>const HomeScreen(),
      //   ScreenTwo.id : (context)=>const ScreenTwo(),
      //   ScreenThree.id : (context)=>const ScreenThree(),
      // },
    );
  }
}


