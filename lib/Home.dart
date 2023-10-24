import 'package:flutter/material.dart';
// import 'package:simple/About.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home View") ,
      ),
      body: FutureBuilder(
        future: getusercount(), 
        builder: (context , sanpshot){
          if (sanpshot.hasData) {
            return Center(
              child: Text(sanpshot.data.toString()),
              
            );
          }
          else{
            return const Center(
child: CircularProgressIndicator(),
            );
          }
        } )
      // Center(
      //   child: ElevatedButton(onPressed: ()async {
      //           var count = getusercount();
      //          print(count);
      //          print(await getusercount());
                
      //   },
        
      //    child: Text("Get User Count")),
      //   // child: ElevatedButton(
      //   //   onPressed: (){
      //   //     Navigator.push(context, MaterialPageRoute(builder: (context) => const About()) );
      //   //   },
      //   //    child: Text("Go About"),),
      // ),
    );
  }
}

Future<int> getusercount () async {
await Future.delayed(Duration(seconds: 5));
return 5;
}
