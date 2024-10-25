import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/academics.dart';
import 'package:myapp/hello.dart';
import 'package:myapp/hobbies.dart';
import 'package:myapp/main.dart';

class menuBtn extends StatelessWidget {
  const menuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // height: double.infinity,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hello()));
                            },
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                width: 100,
                                height: 100,
                               
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  //  color: Colors.green,
                                   image: DecorationImage(image: AssetImage("assets/Images/user.png"),
                                   fit: BoxFit.cover,
                                   )
                                ),
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
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 color: Colors.blue[100],
                                 image: DecorationImage(image: AssetImage("assets/Images/mortarboard.png"),
                                 fit: BoxFit.contain,
                                //  invertColors: Colors.red,
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
                                 fit: BoxFit.contain,
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
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(185, 105, 186, 253),
                  // color: Colors.red,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("App Developer", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Text("I recently started app development after beginning my training at the Cloud Computing Cell just 15 days ago. I’m excited to apply my skills in this new area and explore innovative solutions while enhancing my technical expertise.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Web Developer", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Text("I have been working as a web developer for the past five months. This experience has allowed me to hone my skills in creating responsive and user-friendly websites, and I enjoy tackling new challenges that enhance my knowledge of web technologies. Each project has strengthened my passion for development and design.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("UI/UX Designer", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("I have been working as a web developer for two years, focusing on UI and UX design to enhance user experiences.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400), ),
                          ),
                                        
                        ],
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