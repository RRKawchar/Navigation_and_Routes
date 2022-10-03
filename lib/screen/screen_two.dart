import 'package:flutter/material.dart';
import 'package:navigation_and_route/screen/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id="screen_two";
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  int age=22;
  int phone=01888610543;
  String address="Uttara,Dhaka, Bangladesh";
  @override
  Widget build(BuildContext context) {

    final argument=ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title:Text(argument['name'].toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){

                Navigator.pushNamed(context, ScreenThree.id,
                arguments: {

                  "name":argument['name'],
                   "age":age,
                    "phone":phone,
                    "address":address
                }
                );
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenThree(
               //   name:argument['name'],
               //   age: argument['Age'],
               //   phone: argument['Phone'],
               //   address: argument['address'],
               // )));

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:const BoxDecoration(
                    color: Colors.green
                ),
                child:const Center(
                  child: Text("Screen 2"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
