import 'dart:async';

import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List Item = ["Item1","Item2","Item3","Item4"];
  TextEditingController titleText = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title:  TextField(
          controller: titleText,
          
        ),
        actions: [
          ElevatedButton(onPressed: (){
          setState(() {
             Item.add(titleText.text);
          });
          titleText.clear();
          }, child: const Text("Add Item"))
        ],
        ),
    body: ListView.builder(
      
          itemCount: Item.length,
          itemBuilder:(context,index){
              return Container(
                margin: const EdgeInsets.only(bottom: 2.0),
                child: ListTile(
                  title: Text(Item[index]),
                  tileColor: Colors.amberAccent,
                ),
              );
          }
          ),
      );
      
    
  }
}