// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class principal_view extends StatefulWidget {
  const principal_view({super.key});

  @override
  State<principal_view> createState() => _principal_viewState();
}

class _principal_viewState extends State<principal_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //Title
        title: const Text(
          'Menu principal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Menu princial',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
