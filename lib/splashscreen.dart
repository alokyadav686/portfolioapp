import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));



    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Container(
        color: const Color.fromARGB(255, 168, 210, 244),
        child: Center(child: Text("Portfolio", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
      )

    );
  }
}