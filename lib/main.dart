import 'package:flutter/material.dart';
import 'package:login_page/register_view.dart';

import 'login_view.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),

    );
  }
}

