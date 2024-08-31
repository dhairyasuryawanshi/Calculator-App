import 'package:flutter/material.dart';
import 'package:oneshot/home/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Directionality(
          textDirection: TextDirection.ltr, // Change this to TextDirection.rtl for right-to-left layout
          child: SafeArea(
            child: CalculatorView(),
          ),
        ),
      ),
    );
  }
}
