// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:my_app/basic_app/home_screen.dart';
// import 'package:my_app/basic_app/login_screen.dart';
import 'package:my_app/basic_app/simple_state.dart';  

class basic_apps extends StatelessWidget {
  const basic_apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      home: SampleState(),
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          iconColor: Colors.white,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
