import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final titleText ;
  final subTitleText;
  final trialText;

  const ProfileView(
  {super.key, 
  required this.titleText, 
  required this.subTitleText, 
  required this.trialText}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        leading: CircleAvatar(
           radius: 25.0,
           backgroundColor: Colors.red,
           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP232OI8pozLvc_QkRaA2fbqdQ3bJY3rtYyg&s"),
        ),
        title: Text(titleText),
        subtitle: Text(subTitleText),
        trailing: Text(trialText),
        tileColor: const Color.fromARGB(255, 111, 178, 113),
      
      ),
    );
  }
}
