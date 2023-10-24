import 'package:flutter/material.dart';
import 'package:simple/Contact.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("About View") ,
      ),
      body: 
      Center(
         child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Conatct()) );
          },
           child: Text("Go Contact"),),
      ),
    );
  }
}