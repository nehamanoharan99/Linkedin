// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:linkedin_project/Home.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    String hardcodedUsername = "Neha";
    String hardcodedPassword = "Neha@123";
    final TextEditingController usernameController= TextEditingController();
    final TextEditingController passwordController= TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/LinkedIn_2021.svg/2560px-LinkedIn_2021.svg.png",
          width: 150,
          height: 150),
           Padding(
            padding:  EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30
            ),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "Username",
              ),
            ),
            ),
             Padding(padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
            ),
         Padding(padding:const EdgeInsets.only(
            top: 20
          ),
          child: MaterialButton(
            color: Colors.blue,
            onPressed:(){
              if(hardcodedUsername==usernameController.text && hardcodedPassword==passwordController.text){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                // content: Row(children:const [
                //   Icon(Icons.check),
                
                 // Text("Logged in Successfully");

              //  ],),
              //  ));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                content: Row(children:const [
                  Icon(Icons.check),
                  Text("Invalid Username or Password")

                ],),
                ));

              }

          },
          child:Text("Login",
          style:  TextStyle(color: Colors.white),
          ) ,
          height: 50,
          minWidth: 200,

          ),
          )
        ],
      ),
    );
  }
}