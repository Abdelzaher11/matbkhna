// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matbkhna/screens/categories_screen.dart';
import 'package:matbkhna/screens/details_screen.dart';
import 'package:matbkhna/screens/home_screen.dart';
import 'package:matbkhna/screens/log_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCka_jX99G2suIDV1t6JzF2YW89SGEyde0",
        appId: "1:203754860819:web:714e079dd362a96b9aaae6",
        messagingSenderId: "203754860819",
        projectId: "matbkhna-e1fb6",
    ),
      // apiKey: "AIzaSyCka_jX99G2suIDV1t6JzF2YW89SGEyde0",
      // authDomain: "matbkhna-e1fb6.firebaseapp.com",
      // projectId: "matbkhna-e1fb6",
      // storageBucket: "matbkhna-e1fb6.appspot.com",
      // messagingSenderId: "203754860819",
      // appId: "1:203754860819:web:714e079dd362a96b9aaae6"
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matbkhna',
      home: LogInScreen(),
      //home: DetailsScreen(),
    );
  }
}

