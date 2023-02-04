import 'package:evwork/news.dart';
import 'package:evwork/waterflowing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Ev work",
    initialRoute: '/',
    routes: {
      '/':(context) => MyApp(),
      '/second':(context)=> HomePage(),
      '/third':(context) => WaterFlowing(), 
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EV Work"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ), 
                onPressed: () {
                  print("Topic A Select");
                  Navigator.pushNamed(context, '/second');
                }, 
                child: Text("Topic A")
                ),
            ),

              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ), 
                onPressed: () {
                  print("Topic B Select");
                  Navigator.pushNamed(context, '/third');
                }, 
                child: Text("Topic B")
                ),
              ),
            
          ]),
        ),
      
    );
  }
}