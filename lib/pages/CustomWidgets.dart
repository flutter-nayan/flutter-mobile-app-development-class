import 'package:flutter/material.dart';

class CustomWidgets extends StatefulWidget {
  const CustomWidgets({super.key});

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();
}

class _CustomWidgetsState extends State<CustomWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
           Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Text("Child1",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 54, 244, 92),
            child: const Text("Child2",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 130, 244, 54),
            child: const Text("Child3",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 28, 143, 72),
            child: const Text("Child4",style: TextStyle(
              color: Color.fromARGB(255, 24, 20, 151)
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Text("Child1",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 54, 244, 92),
            child: const Text("Child2",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 130, 244, 54),
            child: const Text("Child3",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 28, 143, 72),
            child: const Text("Child4",style: TextStyle(
              color: Color.fromARGB(255, 24, 20, 151)
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Text("Child1",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 54, 244, 92),
            child: const Text("Child2",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 130, 244, 54),
            child: const Text("Child3",style: TextStyle(
              color: Colors.white
            ),),
           ),
           Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 28, 143, 72),
            child: const Text("Child4",style: TextStyle(
              color: Color.fromARGB(255, 24, 20, 151)
            ),),
           ),
          ],
        ),
      )
    );
  }
}