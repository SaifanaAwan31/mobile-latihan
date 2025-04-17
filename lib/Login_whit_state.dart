import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  TextEditingController emailController= TextEditingController();
    TextEditingController passwordController= TextEditingController();
    bool passwordNyala = true;
tampilpassword(){
  setState(() {
    passwordNyala = !passwordNyala;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: emailController,
        ),
        TextField(
          controller: passwordController,
          obscureText: passwordNyala,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            labelText: "password",
            hintText: "masukkan password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: 
            //Icon( passwordNyala?Icons.visibility: Icons.visibility_off),
            IconButton(
              onPressed: () {
                tampilpassword();
              },
              icon: Icon(
                passwordNyala?Icons.visibility: Icons.visibility_off),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            print("email = ${emailController.text}");
            tampilpassword();
          },
          child: Text("Login"),)
      ],),
    );
  }
}