import 'package:flutter/material.dart';
import 'package:navigation_and_route/professional_way/utils/route_name.dart';

class Screen1 extends StatefulWidget {

  dynamic data;

   Screen1({Key? key,

  required this.data,
  }) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.data['name']),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Name :${widget.data['name']}"),
            Text("Age : ${widget.data['age']}"),
            Text("Profession : ${widget.data['profession']}"),
            Text("Address : ${widget.data['address']}"),
            Text("Student : ${widget.data['Student']}"),
            const SizedBox(height: 40,),
            InkWell(
              onTap: (){

              Navigator.pushNamed(context, RouteName.screen2,
              arguments: {
                'name':"Riyazur Rohman Kawchar",
                'age': 22,
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
