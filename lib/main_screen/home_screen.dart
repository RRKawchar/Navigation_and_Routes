import 'package:flutter/material.dart';
import 'package:navigation_and_route/screen/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id="home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name="Riyazur Rohman Kawchar";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("Screen 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            InkWell(
              onTap: (){

                Navigator.pushNamed(context, ScreenTwo.id,

                arguments: {

                  "name":name,
                  "Age":22,
                  "Phone":01888610543,
                  "address":"Uttara,Dhaka,Bangladesh",

                }

                );

                // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo(
                //   name: name,
                // )));

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:const BoxDecoration(
                  color: Colors.green
                ),
                child:const Center(
                  child: Text("Screen 1"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
