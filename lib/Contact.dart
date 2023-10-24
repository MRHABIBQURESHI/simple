import 'package:flutter/material.dart';

class Conatct extends StatefulWidget {
  const Conatct({super.key});

  @override
  State<Conatct> createState() => _ConatctState();
}

class _ConatctState extends State<Conatct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Contact View") ,
      ),

      body: StreamBuilder(
        stream: getsensordata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString()));
 }
 return Center(
  child: CircularProgressIndicator(),
 );
        },
      
      ),
      // body: 
      // 
      // Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       Navigator.pop(context);
      //     },
      //      child: Text("Go Back"),),
      // ),
    );
  }
}


Stream<int> getsensordata()async*{
  for (var i = 0; i < 30; i++) {
    await  Future.delayed(Duration(seconds: 3));
    // yeild : 5;
  }
  
}
