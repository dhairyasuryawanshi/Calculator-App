import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TestApp",
      home: const Material(
        color: Colors.greenAccent,
        child: Center(child:
        Text("hi",
          style: TextStyle(
              fontSize: 100,
              fontStyle: FontStyle.normal
          ),)
        ),
      ),

    );
  }
}
