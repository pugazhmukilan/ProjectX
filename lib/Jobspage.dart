import 'package:flutter/material.dart';

class Jobspage extends StatefulWidget {
  
  @override
  _JobspageState createState() => _JobspageState();
}

class _JobspageState extends State<Jobspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage("assets/icon_assets/Back_button.png"))),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text("Search for your",style: TextStyle(fontFamily: "Inter",fontSize: 18,color: Color.fromARGB(255, 77, 77, 77),fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text("JOBS",style: TextStyle(fontFamily:"Inter",fontSize: 40,color: Color.fromARGB(255, 9, 9, 9),fontWeight:FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}