import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

 final String name;
 final String age;

  const Screen2({Key? key,required this.name,required this.age}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){


                Navigator.pop(context);
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
