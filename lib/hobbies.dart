import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/academics.dart';
import 'package:myapp/hello.dart';
import 'package:myapp/hobbies.dart';
import 'package:myapp/main.dart';

class hobbies extends StatelessWidget {
  const hobbies({super.key});

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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hello()));
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //  color: Colors.green,
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
                              Navigator.pop(context);
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>menuBtn()));
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                             
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
                              width: 60,
                              height: 60,
                             
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
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>hobbies()));
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                             
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 color: Colors.blue[100],
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Listening Music", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Text("One of my favorite hobbies is listening to music. It allows me to unwind and escape into different emotions and experiences. Whether it’s the soothing melodies of classical music or the energetic beats of pop, each genre brings something unique, enriching my life and providing constant inspiration and joy.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("UI/UX Design", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Text("UI/UX design is a hobby I enjoy. I’m passionate about creating user-friendly interfaces that enhance interactions and inspire innovative solutions.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                         
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Playing Games", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Playing online games is one of my favorite hobbies. I enjoy the excitement of competition and the chance to connect with friends while exploring immersive virtual worlds. It’s a great way to unwind, challenge myself, and experience teamwork in a fun, engaging environment.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400), ),
                          ),
                
                         
                      
                        ],
                      ),
                    ),
                  ),
                )
              ),
              
          ],
        ),
      ),


    );
  }
}