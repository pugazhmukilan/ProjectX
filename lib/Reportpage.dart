import 'package:flutter/material.dart';


class Reportpage extends StatefulWidget {
  const Reportpage({super.key});

  @override
  _ReportpageState createState() => _ReportpageState();
}

class _ReportpageState extends State<Reportpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage("assets/icon_assets/Back_button.png"))),

            Text("Reports",style: TextStyle(fontFamily: "Inter",fontSize: 18,color: Color.fromARGB(255, 77, 77, 77),fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}