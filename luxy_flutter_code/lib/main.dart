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

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'cadastrar_view': (context) => const cadastrar_view(),
          'login': (context) => const login_view(),
          'principal_view': (context) => const principal_view(),
        },
      ),
    ),
  );
}
