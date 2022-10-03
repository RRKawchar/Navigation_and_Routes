import 'package:flutter/material.dart';
import 'package:navigation_and_route/professional_way/utils/route_name.dart';
import 'package:navigation_and_route/professional_way/utils/utils_screen/home_page.dart';
import 'package:navigation_and_route/professional_way/utils/utils_screen/screen1.dart';
import 'package:navigation_and_route/professional_way/utils/utils_screen/screen2.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){

      case RouteName.homePage:
        return MaterialPageRoute(builder: (context)=>const HomePage());
      case RouteName.screen1:
        return MaterialPageRoute(builder: (context)=>Screen1(data: settings.arguments as Map,));
      case RouteName.screen2:
        return MaterialPageRoute(builder: (context)=>const Screen2(name:'Riyazur Rohman Kawchar',age: '',));
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body:  Center(
              child: Text("No route Defined"),
            ),
          );
        });
    }

  }

}