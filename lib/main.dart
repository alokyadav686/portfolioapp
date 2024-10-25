import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/academics.dart';
import 'package:myapp/introPage.dart';
import 'package:myapp/menuBtn.dart';
import 'package:myapp/splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){

runApp(MaterialApp(
  home: splashscreen(),
debugShowCheckedModeBanner: false,


));

}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // home: splashscreen(),

      body: Container(
        width: double.infinity,
        
        // color: Color.fromARGB(242, 27, 26, 26),
        decoration: BoxDecoration(
         // color: Colors.red,
          image: DecorationImage(image: AssetImage("assets/Images/backgroundfinal.png"),
          fit: BoxFit.cover, 
          
          opacity: 1,
          )
          
        ),


          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
          
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        TextButton(onPressed: (){
          
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
          
                        }, 
                        child: Icon(Icons.menu, size: 35,color: Colors.black),),
                        
                         Padding(
                        padding: const EdgeInsets.only(left: 22.0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Text("Alok Yadav", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: Colors.black),),
                             Text("App Developer", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black),),
                          ],
                        ),
                      ),
                        
                      ],
                  
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                
                height: 300,
                // color: Colors.grey,
                decoration: BoxDecoration(
                  color: Color.fromARGB(252, 75, 195, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                            Column(
                              children: [
                                Text("Can I help you?", style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text("Let's  Work?",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),),
                              ],
                            ),
                  
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                              child: Text("Contact Me", style: TextStyle(fontSize: 18,color: Colors.black),),
                                        onPressed: () {
                                      //  print("button tapped");
                                      //  FlutterPhoneDirectCaller.callNumber("+91767134878"),
                                        
                                      
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>introPage()));
                                       },),
                                ],
                              ),
                            )
                            
                           ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                
                          
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
                                          },
                                          child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(300),
                                              boxShadow: [
                                                         BoxShadow(
                                                            color: const Color.fromARGB(255, 0, 58, 105).withOpacity(0.4),
                                                           offset: Offset(0, 3), 
                                                            blurRadius: 7,      
                                                           spreadRadius: 2,     
                                                         ),
                                                        ],
                                          
                                            ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.work,color: Colors.white60,size: 30,),
                                                  Text("Know",style: TextStyle(fontSize: 18,)),
                                                  Text("My Work",style: TextStyle(fontSize: 18,)),
                                                ],
                                              ),
                                            
                                          ),
                                        ),
                                      ),
                                       Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: InkWell(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>academics()));
                                          },
                                           child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(300),
                                               boxShadow: [
                                                         BoxShadow(
                                                            color: const Color.fromARGB(255, 0, 58, 105).withOpacity(0.4),
                                                           offset: Offset(0, 3), 
                                                            blurRadius: 7,      
                                                           spreadRadius: 2,     
                                                         ),
                                                        ],
                                            ),
                                              child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.account_box, color: Colors.white60,size: 30  ,),
                                                  Text("About",style: TextStyle(fontSize: 18,)),
                                                  Text("Me",style: TextStyle(fontSize: 18,)),
                                                ],
                                              ),
                                            
                                                                                   ),
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                          width: 150,
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(300),
                                             boxShadow: [
                                                       BoxShadow(
                                                          color: const Color.fromARGB(255, 0, 58, 105).withOpacity(0.4),
                                                         offset: Offset(0, 3), 
                                                          blurRadius: 7,      
                                                         spreadRadius: 2,     
                                                       ),
                                                      ],
                                          ),
                                            child: Column(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.chat_bubble_sharp,color: Colors.white60,size: 30,),
                                                Text("Where",style: TextStyle(fontSize: 18,),),
                                                Text("I am",style: TextStyle(fontSize: 18,)),
                                              ],
                                            ),
                                          
                                        ),
                                       ),
                                  
                                    ],
                                  ),
                                ),
                              ),
                            ],
              
                        ),
                        
                    ],
                  ),
                ),
                
                
              ),
              
          
          
          
          
          
          
          ],),



      ),
   
    );
  }
}

