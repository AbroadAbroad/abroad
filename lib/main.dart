import 'package:abroad/screens/signin_screen.dart';
import 'package:abroad/screens/welcome_screen.dart';
import 'package:abroad/screens/signup_screen.dart';
import 'package:abroad/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SignInScreen(),
    );
  }
}