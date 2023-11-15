// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../controller/login_controller.dart';

class cadastrar_view extends StatefulWidget {
  const cadastrar_view({super.key});

  @override
  State<cadastrar_view> createState() => _CadastrarViewState();
}

class _CadastrarViewState extends State<cadastrar_view> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      //
      //App bar
      //
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        elevation: 0,
        title: Text(
          'Register',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          children: [
            //
            //Space
            //
            SizedBox(height: 40),
            //
            //Name
            //
            TextField(
              controller: txtNome,
              showCursor: true,
              decoration: InputDecoration(
                //Make this textfield white
                filled: true,
                fillColor: Colors.white,
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
                //Rounder border
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            //
            //Space
            //
            SizedBox(height: 20),
            //
            //Email
            //
            TextField(
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
            //
            //Space between email and password
            //
            SizedBox(height: 20),
            //
            //Password field
            //
            TextField(
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
            //
            //Space between buttons
            //
            SizedBox(height: 40),
            //
            //Register button
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Cancel button
                Container(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 66, 226),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //Space between buttons
                SizedBox(width: 10),
                //Register
                Container(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      LoginController().criarConta(
                        context,
                        txtNome.text,
                        txtEmail.text,
                        txtSenha.text,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 138, 66, 226),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
