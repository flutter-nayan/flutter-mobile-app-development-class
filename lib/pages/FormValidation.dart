import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Counter.dart';

class FormValidation extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey();
    
   FormValidation({super.key});
 void _submitForm(){
  if(_formkey.currentState!.validate()){

  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: 
        
        Column(
          children: [
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomCounter()));
            }, child: Text("Click")),
            Text("Contact Form",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,
            fontSize: 40.0),),
            SizedBox(height: 20.0,),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return "User name is required";
                }else{
                  return null;
                }
              },
              decoration: InputDecoration(
                labelText: "User name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

            ),
            SizedBox(height: 5.0,),
            TextFormField(
              validator:  (value){
                if(value!.isEmpty){
                  return "Email is required";
                }else{
                  return null;
                }
              },
               decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),
            ),
             SizedBox(height: 5.0,),
            TextFormField(
              validator:  (value){
                if(value!.isEmpty){
                  return "Phone no is required";
                }else{
                  return null;
                }
              },
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
                  _submitForm();
                  print(_formkey.currentState);

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