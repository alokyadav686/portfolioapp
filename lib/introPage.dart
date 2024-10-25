import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/backgroundmenu.png"),
          fit: BoxFit.cover)
        ),
        child: Column(
          children: [
              Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                               
                    )
                    
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 30,),
                        Text("+91 766 713 4878", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10,),
                        Text("@alokkumaryadav2799@gmail.com", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(Icons.facebook, size: 30,),
                        SizedBox(width: 30,),
                        Text("@alok_ranjan", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],)
                ],
              ),
              
              
          ],
        ),
      ),

    
    
    );
  }
}