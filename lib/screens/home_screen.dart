import 'package:flutter/material.dart';
import 'package:parcial2/screens/map_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  MapScreen(),
    );
  }
}
