import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

import 'Jobspage.dart';
import 'Reportpage.dart';
class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  _HomepageState createState()=> _HomepageState();

}
class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar:AppBar(
        toolbarHeight: 160,
        title:Expanded(
          child: Column(
            children:[ 
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //image button using asset image
                  //add function to the button
                  IconButton(onPressed: (){}, icon:Image.asset("assets/icon_assets/threebar.png",),),

                ],
              ),
              
        
        
              //row for the name ,greeting and image
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //asset image from the icon images
                      
                      Text("Hello..\u{1F44B}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                      Text("Pugazh Mukilan",style:TextStyle(fontSize: 23,fontWeight: FontWeight.w500))
                        
                    ],
                  ),

                  Expanded(
                    child: Container(
                      
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 225, 225, 225),
                    radius:55
                    ,
                  ),
                ],
                          ),
              ),]
          ),
        )
      ),
      body:SingleChildScrollView(
        
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),//scroll physics bouncing
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              child:Center(child: Text("Ads",style: TextStyle(color: Color.fromARGB(255, 110, 110, 110)),)),
              height:60,
              width: double.infinity,
        
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color:Color.fromARGB(143, 236, 236, 236),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 0, 8),
              child: Text("Features",style:TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
            ),
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FeaturesButton(startcolor: Color.fromARGB(255, 242, 229, 95),
                  endcolor:Color.fromARGB(255, 244, 141, 190) ,
                  subtext: "Find Your",
                  maintext: "Reports",
                  imagepath:"assets/icon_assets/report.png",
                  operation: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => Reportpage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(begin: Offset(4.0, 0.0), end: Offset.zero).animate(animation),
                    child: child,
                  );
                },
              ),
);
                  }
                 ),
                 FeaturesButton(startcolor: Color.fromARGB(255, 138, 86, 249),
                  endcolor:Color.fromARGB(255, 89, 86, 253) ,
                  subtext: "Find Your",
                  maintext: "Jobs",
                  imagepath:"assets/icon_assets/job_user.png",
                  operation: (){
                    Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => Jobspage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(begin: Offset(4.0, 0.0), end: Offset.zero).animate(animation),
                    child: child,
                  );
                },
              ),
);
       
                  }
                 ),
                 FeaturesButton(startcolor: Color.fromARGB(255, 249, 19, 19),
                  endcolor:Color.fromARGB(255, 249, 70, 167) ,
                  subtext: "Trending \u{1F525}",
                  maintext: "Jobs News",
                  imagepath:"assets/icon_assets/News.png",
                  operation: (){
                    //write the operation
                  }
                 ),

                 
                  
        
        
                ],
              ),
            ),
            divider(3,3),



            //GRAPH PART
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 2, 0, 5),
              child: Text("Your Growth",style:TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
            ),

            Container(
              height: 160,
              width: double.infinity,
              
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("Graph will be updated",style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Color.fromARGB(127, 196, 196, 196))),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text("Practise",style:TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
            ),
             

            GestureDetector(
          onTap:(){
            print("starting interview");
            //write the function for the click

          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
            child: Container(
              
              width: double.infinity,
              height:150,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color.fromARGB(255, 249, 19, 19), Color.fromARGB(255, 249, 70, 167)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,),
              borderRadius: BorderRadius.circular(20),
              ),
        
              //content inside the container
              child: Padding(
                //giving padding to the whole row to maintain the text properly
                padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Your",style:TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: Colors.black)),
                        Text("Interview",style:TextStyle(fontSize:28,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 255, 255, 255))),
                      ],
                    ),
                    Expanded(
                      child: Container(
                    
                      ),
                    ),
                    //container image 
                    Image.asset("assets/icon_assets/tie2.png"),
                  ],
                ),
              ),
                      
            ),
          ),
    ),

       Container(
            height: 400,
            width: double.infinity,
            
            // Use const keyword for AssetImage constructor and DecorationImage
            decoration: const BoxDecoration(
              image:DecorationImage(image: AssetImage("assets/image_assets/designbackground.png"),
              fit:BoxFit.none),
              
            ),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(15, 80, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Made with \nCare!\u2764\uFE0F",style:TextStyle(fontFamily:"Inter",fontSize:40,fontWeight:FontWeight.bold,
                color: const Color.fromARGB(255, 118, 142, 255))),
                Text("Coded with love by\nus for you ",style:TextStyle(fontFamily: "jetBrainsMono",fontSize: 15,fontWeight:FontWeight.w500)),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                          //write the code
                          print("launching the website");
                          
                          _launchURL('https://github.com/pugazhmukilan');
                          
                      }, child: Text("Pugazh Mukilan",style: TextStyle(fontFamily: "jetBrainsMono",fontSize: 10,color:Colors.black),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                          //write the code
                      }, child: Text("Hemanth Kumar",style: TextStyle(fontFamily: "jetBrainsMono",fontSize: 10,color:Colors.black),)),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                          //write the code
                      }, child: Text("Tarun",style: TextStyle(fontFamily: "jetBrainsMono",fontSize: 10,color:Colors.black),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                          //write the code
                      }, child: Text("Karthik Sagar",style: TextStyle(fontFamily: "jetBrainsMono",fontSize: 10,color:Colors.black),)),
                    ),
                  ],
                ),
              ],),
            ) // Your child widget here
          ),
        
          ]),
        ),
      ),
      
    
    
    );
  }

  Padding divider(double start,double end) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Divider(
              indent: start,
              endIndent: end,
              color: const Color.fromARGB(255, 205, 205, 205),
    
            ),
    );
  }
}

class FeaturesButton extends StatelessWidget {
  late Color startcolor;
  late Color endcolor;
  late String subtext;
  late String maintext;
  late String imagepath;
  late Function() operation;
  FeaturesButton({
   required this.startcolor,
   required this.endcolor,
   required this.subtext,
   required this.maintext,
   required this.imagepath,
   required this.operation,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:operation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
        child: Container(
          
          width: 250,
          height:100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startcolor, endcolor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,),
          borderRadius: BorderRadius.circular(20),
          ),
    
          //content inside the container
          child: Padding(
            //giving padding to the whole row to maintain the text properly
            padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtext,style:TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: Colors.black)),
                    Text(maintext,style:TextStyle(fontSize:28,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 255, 255, 255))),
                  ],
                ),
                Expanded(
                  child: Container(
                
                  ),
                ),
                //container image 
                Image.asset(imagepath,),
              ],
            ),
          ),
                  
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw
 
'Could not launch $url';
  }
}