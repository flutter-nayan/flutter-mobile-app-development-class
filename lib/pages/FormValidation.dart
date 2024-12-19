import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget {
    
   FormValidation({super.key});
  _submitForm(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(child: 
        
        Column(
          children: [
            Text("Contact Form",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,
            fontSize: 40.0),),
            SizedBox(height: 20.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "User name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

            ),
            SizedBox(height: 5.0,),
            TextFormField(
              
               decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),
            ),
             SizedBox(height: 5.0,),
            TextFormField(
               decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),
            ),
             SizedBox(height: 5.0,),
            Container(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){

              }, child: Text("Submit Button",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              )
              
              ),
              )
          ],
        )),
      ),
    );
  }
}