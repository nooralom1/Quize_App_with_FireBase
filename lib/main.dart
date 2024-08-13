
import 'package:flutter/material.dart';
import 'package:quize_app/views/screens/guess_thr_logo/guess_the_logo.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GuessTheLogoPage(),
    );
  }
}
