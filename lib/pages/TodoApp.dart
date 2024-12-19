

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
        backgroundColor: Colors.blue,
        title:  TextField(
          controller: titleText,
          decoration: InputDecoration(hintText: "Enter a Item"),
          
        ),
        actions: [
          ElevatedButton(onPressed: (){
         if(titleText.text.isNotEmpty){
           setState(() {
             Item.add(titleText.text);
          });
         }
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
                  title: Text(Item[index],style: TextStyle(color: Colors.white),),
                  tileColor: const Color.fromARGB(255, 13, 2, 46),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          Item.removeAt(index);
                        });
                      }, icon: Icon(Icons.delete,color: Colors.white,)),
                      IconButton(onPressed: (){
                        _showEdit(context,index);
                      }, icon: Icon(Icons.edit,color: Colors.white,))
                    ],
                  ),
                ),

              );
          }
          ),
      );
      
    
  }

  void _showEdit(BuildContext context,int index){
    TextEditingController editdata = TextEditingController(text:Item[index]);
    showDialog(
      barrierDismissible: false,
      context: context, builder:(context){
      
        return AlertDialog(
          
          title: Text("Edit Item",style: TextStyle(color: const Color.fromARGB(255, 8, 94, 57),fontWeight: FontWeight.bold),
          
          ),
          content: TextField(
            controller: editdata,
            decoration: InputDecoration(hintText: "At least one item have to be added"),
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text("Cancel")),
            ElevatedButton(onPressed: (){
             if(editdata.text.isNotEmpty){
               setState(() {
                Item[index] = editdata.text;
              });
             }
              Navigator.pop(context);
            }, child: Text("Save"))
          ],
        );

    }
    );
  }
}