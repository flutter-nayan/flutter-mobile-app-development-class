import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is our First App",
        style: TextStyle(
          color: Color.fromARGB(223, 255, 255, 255)
        ),
        ),
        backgroundColor: Colors.green,
      ),
      body:Container(
        width: double.infinity,
        height: 700,
        color: Colors.black,
        
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
             Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
             ),
             const Spacer(),
             //SizedBox(height: 10,),
             Container(
              width: 100,
              height: 100,
              color: Colors.blue,
             ),
              //SizedBox(height: 10,),
              Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
             ),
             Container(
              width: 100,
              height: 100,
              color: Colors.blue,
             ),
              Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
             ),
             
             
             
             
            ],
          ),
        
      )
    );
  }
}