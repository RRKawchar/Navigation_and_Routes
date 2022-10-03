import 'package:flutter/material.dart';
import 'package:navigation_and_route/professional_way/utils/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name="Riyazur Rohman Kawchar";
  String profession="Software Developer";
  int age=22;
  String address="Uttara, Dhaka, Bangladesh";
  bool isStudent=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){

              Navigator.pushNamed(context, RouteName.screen1,
             arguments: {

                "name":name,
                "profession":profession,
                "age":age,
                "address":address,
                 "Student":isStudent,
             }


              );

              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration:const BoxDecoration(
                  color: Colors.green
                ),
                child:const Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
