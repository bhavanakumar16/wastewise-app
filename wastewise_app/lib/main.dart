import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wastewise_app/screens/home_page.dart';
import 'package:wastewise_app/utils/theme.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      home: const WasteWiseApp(),
    )
  );
}

class WasteWiseApp extends StatelessWidget {
  const WasteWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}