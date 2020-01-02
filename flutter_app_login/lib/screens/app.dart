import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return provider(
      child: MaterialApp(
        title: 'Log Me In!',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}