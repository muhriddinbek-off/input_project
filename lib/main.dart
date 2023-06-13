import 'package:flutter/material.dart';
import 'homepage.dart';

void main () => runApp(Materialapp());


class Materialapp extends StatelessWidget {
  const Materialapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}