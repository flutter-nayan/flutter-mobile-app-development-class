import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/FormValidation.dart';
import 'package:flutter_application_1/pages/TodoApp.dart';
//import> 'package:flutter_application_1/pages/home.dart';
//import 'package:flutter_application_1/pages/profileView.dart';

void  main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:FormValidation(),
      debugShowCheckedModeBanner: false,
    );
  }
}