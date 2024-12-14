import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int countValue = 0;
 reset(){
   if(countValue==0){
   setState(() {
      countValue++;
   });
  }else{
    setState(() {
      countValue--;
    });
  }
 }
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("The Counter State is:$countValue",
              style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
            
            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              reset();
             
              print(countValue);
            }, child: const Text("Press Me"))
          ],
        ),
      
      ),
    );
  }
}