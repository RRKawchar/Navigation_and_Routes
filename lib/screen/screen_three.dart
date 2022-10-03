import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String id="screen_three";
  // final String name;
  // final int age;
  // final int phone;
  // final String address;
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {

  @override
  void initState() {
    // print(widget.name);
    // print(widget.age);
    // print(widget.phone);
    // print(widget.address);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final argument=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title:Text(argument['name']
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const Text("Name : "),
              Text(argument['name'])
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const Text("Age : "),
              Text(argument['age'].toString())
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const Text("Phone : "),
              Text(argument['phone'].toString())
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const Text("Address : "),
              Text(argument['address'])
            ],),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
              Navigator.pop(context);

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:const BoxDecoration(
                    color: Colors.green
                ),
                child:const Center(
                  child: Text("Screen 3"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
