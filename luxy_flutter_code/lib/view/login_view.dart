// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/login_controller.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _LoginViewState();
}

class _LoginViewState extends State<login_view> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtEmailEsqueceuSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        children: [
          //
          //Logo
          //
          Container(
            margin: EdgeInsets.only(
              top: 75,
            ),
            //Gambiarra com a imagem
            child: Image.network(
              'https://raw.githubusercontent.com/TheYanVictor/LuxY/main/luxy_flutter_code/assets/img/LuxY-branco.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 20),
          //
          //Email
          //
          Container(
            width: 350,
            child: TextField(
              controller: txtEmail,
              showCursor: true,
              decoration: InputDecoration(
                //Make this textfield white
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                //Rounder border
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          //
          //Space between email and password
          //
          SizedBox(height: 20),
          //
          //Password field
          //
          Container(
            width: 350,
            child: TextField(
              controller: txtSenha,
              obscureText: true,
              decoration: InputDecoration(
                //make this textfield white
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                //Rounder border
                border: OutlineInputBorder(
                  //Shorten the button width
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          //Space between password and forgot password button
          SizedBox(height: 10),
          //
          //Forgot password button
          //
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        "Forgot your password?",
                      ),
                      content: Container(
                        height: 150,
                        child: Column(
                          children: [
                            Text(
                              "Write your email below and we'll send you a link to reset your password.",
                            ),
                            SizedBox(height: 25),
                            TextField(
                              controller: txtEmailEsqueceuSenha,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actionsPadding: EdgeInsets.all(20),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            LoginController().esqueceuSenha(
                              context,
                              txtEmailEsqueceuSenha.text,
                            );
                          },
                          child: Text('Send'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white54,
                ),
              ),
            ),
          ),
          //
          //Space between password and login button
          //
          SizedBox(height: 20),
          //
          //Login button
          //
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              minimumSize: Size(200, 60),
            ),
            onPressed: () {
              LoginController().login(
                context,
                txtEmail.text,
                txtSenha.text,
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          //
          //Space between login button and register button
          //
          Spacer(),
          //
          //Register button
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.white54),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'cadastrar_view');
                },
                child: Text('Register'),
              ),
            ],
          ),
          //Space between register button and bottom
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
