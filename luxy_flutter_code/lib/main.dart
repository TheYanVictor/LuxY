import 'dart:ui';
import 'dart:ui_web';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxy_flutter_code/firebase_options.dart';
import 'package:luxy_flutter_code/view/cadastrar_view.dart';
import 'package:luxy_flutter_code/view/login_view.dart';
import 'package:luxy_flutter_code/view/principal_view.dart';

class MyCustomBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}

void main() {
  Future<void> main() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  ;

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        //New font
        theme: ThemeData(
          fontFamily: GoogleFonts.getFont('Domine').fontFamily,
        ),

        useInheritedMediaQuery: true,

        debugShowCheckedModeBanner: true,
        scrollBehavior: MyCustomBehavior(),

        //Navigation routes
        initialRoute: 'login',
        routes: {
          //Login Page
          'login': (context) => login_view(),
          'cadastrar_view': (context) => cadastrar_view(),

          //Main menu page
          'principal_view': (context) => principal_view(),

          //Following pages
        },
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
