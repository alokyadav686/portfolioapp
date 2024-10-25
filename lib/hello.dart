import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/academics.dart';
import 'package:myapp/hello.dart';
import 'package:myapp/hobbies.dart';
import 'package:myapp/main.dart';
import 'package:myapp/menuBtn.dart';

class hello extends StatelessWidget {
  const hello({super.key});

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
                height: 90,
                width: double.infinity,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      
                    },
                    child: Icon(Icons.arrow_back,size: 40,),
                    
                    )
                    
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 30),
                    child: Text("About me",style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          
                          InkWell(
                            onTap: () {
                              print("conatainer 1 tapped");
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>hello()));
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 color: Colors.blue[100],
                                 image: DecorationImage(image: AssetImage("assets/Images/user.png"),
                                 fit: BoxFit.cover,
                                 )
                              ),
                            ),
                          ),
                          Text("Hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          
                          InkWell(
                            onTap: () {
                              print("conatainer 2 tapped");
                              // Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //  color: Colors.red,
                                 image: DecorationImage(image: AssetImage("assets/Images/mortarboard.png"),
                                 fit: BoxFit.cover,
                                 )
                              ),
                            ),
                          ),
                          Text("Experience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          
                          InkWell(
                            onTap: () {
                              print("conatainer 3 tapped");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>academics()));
                              
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //  color: Colors.red,
                                 image: DecorationImage(image: AssetImage("assets/Images/portfolio.png"),
                                 fit: BoxFit.cover,
                                 )
                              ),
                            ),
                          ),
                          Text("Academics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          
                          InkWell(
                            onTap: () {
                              print("conatainer 4 tapped");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hobbies()));
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //  color: Colors.red,
                                 image: DecorationImage(image: AssetImage("assets/Images/star.png"),
                                 fit: BoxFit.cover,
                                 )
                              ),
                            ),
                          ),
                          Text("Hobbies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    
                    
                  ],
                ),
                ),
              ),
              // Expanded(child: Container()),
              SizedBox(height: 90,),

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(185, 105, 186, 253),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                  
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0,bottom: 20),
                              child: Text("Welcome To My App", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                            ),
                            Text("Welcome to our app! We’re thrilled to have you here. This section is designed to guide you through all our features and help you maximize your experience. Whether you're seeking resources, support, or simply looking to explore, we’re here to assist you at every step. Dive in, and enjoy your journey with us! We hope you find everything you need and feel empowered to make the most of our platform. Your feedback is invaluable, so don’t hesitate to reach out with any questions or suggestions. Happy exploring!", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                            
                            ElevatedButton(onPressed: (){
                  
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
                  
                            }, child: Text("Let's Explore",style: TextStyle(color: Colors.blue),)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
          ],
        ),
      ),


    );
  }
}